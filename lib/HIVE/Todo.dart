import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await Hive.openBox('task_box');
  runApp(MaterialApp(
    //useInheritedMediaQuery: true,
    home: MyTodo(),
  ));
}

class MyTodo extends StatefulWidget {
  @override
  State<MyTodo> createState() => _MyTodoState();
}

class _MyTodoState extends State<MyTodo> {
  List<Map<String, dynamic>> task = [];

  final tbox = Hive.box('task_box');

  @override
  void iniState() {
    super.initState();
    loadTask();
  }

  Future<void> createTask(Map<String, dynamic> task1) async {
    await tbox.add(task1);
    loadTask();
  }

  void loadTask() {
    final data = tbox.keys.map((id) {
      final value = tbox.get(id);
      return {'key': 'id', 'name': value['name'], 'details': value['details']};
    }).toList();
    setState(() {
      task = data.reversed.toList();
    });
  }

  Future<void> updateTask(int key, Map<String, dynamic> uptask) async {
    await tbox.put(key, uptask);
    loadTask();
  }

  Future<void> deleteTask(int key) async {
    await tbox.delete(key);
    loadTask();
  }

  Map<String, dynamic> readData(int key) {
    final data = tbox.get(key);
    return data;
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ToDo"),
        ),
        body: task.isEmpty
            ? Center(
                child: const Text(
                "NO DATA",
                style: TextStyle(fontSize: 40),
              ))
            : ListView.builder(
                itemCount: task.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.pink,
                    margin: const EdgeInsets.all(10),
                    elevation: 3,
                    child: ListTile(
                      title: Text(task[index]['name']),
                      subtitle: Text(task[index]['details']),
                      trailing: Wrap(
                        children: [
                          IconButton(onPressed: () {
                            showForm(context, task[index]["key"]);
                          },
                              icon: const Icon(Icons.edit_calendar)),
                          IconButton(onPressed: () {
                            //deleteTask(task[index]["key"]);
                          }, icon: const Icon(Icons.delete))
                        ],
                      ),
                    ),
                  );
                }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showForm(context, null),
        child:  const Icon(Icons.add),
      ),

    );

  }

  final name_controller = TextEditingController();
  final details_controller = TextEditingController();

  void showForm(BuildContext context, int? id) async {
    if(id != null){
      final ex_task =
      task.firstWhere((element) => element['key'] == id);
      name_controller.text = ex_task['name'];
      details_controller.text  = ex_task['details'];
    }
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        elevation: 5,
        builder: (context) {
          return Container(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom + 120,
              top: 15,
              left: 15,
              right: 15,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextField(
                  controller: name_controller,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: "Task Name"),
                ),
                TextField(
                  controller: details_controller,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: "Task Details"),
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                    onPressed: () async {
                      if (id == null) {
                        createTask({
                          'name': name_controller.text,
                          'details': details_controller.text
                        });
                      }
                      if (id != null) {
                        updateTask(id ,{'name' :name_controller.text, 'details' :details_controller.text});
                      }

                      name_controller.text = "";
                      details_controller.text = "";
                      Navigator.of(context).pop();
                    },
                    child: Text(id == null ? "Create Task" : "Update Task"))
              ],
            ),
          );
        });
  }


}
