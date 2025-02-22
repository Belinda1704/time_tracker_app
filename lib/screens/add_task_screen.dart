import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
  final Function(String) onTaskAdded;

  AddTaskScreen({required this.onTaskAdded});

  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final TextEditingController _taskController = TextEditingController();

  void _submitTask() {
    if (_taskController.text.trim().isNotEmpty) {
      widget.onTaskAdded(_taskController.text.trim());
      Navigator.pop(context); // Close screen after adding task
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Task cannot be empty!")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Task")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _taskController,
              decoration: InputDecoration(labelText: "Task Name"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitTask,
              child: Text("Add Task"),
            ),
          ],
        ),
      ),
    );
  }
}
