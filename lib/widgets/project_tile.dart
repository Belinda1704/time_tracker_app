import 'package:flutter/material.dart';
import '../models/project.dart';

class ProjectTile extends StatelessWidget {
  final Project project;
  final VoidCallback onTap;

  ProjectTile({required this.project, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        title: Text(project.name, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(project.description),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      ),
    );
  }
}
