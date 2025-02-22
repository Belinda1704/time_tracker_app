import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String task;
  final VoidCallback onComplete;

  TaskTile({required this.task, required this.onComplete});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      child: ListTile(
        title: Text(task),
        leading: IconButton(
          icon: Icon(Icons.check_circle_outline, color: Colors.green),
          onPressed: onComplete,
        ),
      ),
    );
  }
}
