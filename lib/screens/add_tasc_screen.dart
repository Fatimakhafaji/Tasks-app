import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/taskdata.dart';

class AddTascScreen extends StatelessWidget {
  final Function addTaskCallback;
  AddTascScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    String? newTaskTitle;
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add task',
            style: TextStyle(
              fontSize: 30,
              color: Colors.indigo[400],
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          const SizedBox(height: 30),
          TextButton(
            onPressed: () {
              Provider.of<TaskData>(context, listen: false)
                  .addTask(newTaskTitle!);
              Navigator.pop(context);
            },
            // ignore: sort_child_properties_last
            child: const Text('Add'),
            style: TextButton.styleFrom(
              backgroundColor: Colors.teal[400],
            ),
          ),
        ],
      ),
    );
  }
}
