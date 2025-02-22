import 'package:flutter/material.dart';
import '../models/project.dart';

class ProjectProvider with ChangeNotifier {
  final List<Project> _projects = [];

  List<Project> get projects => _projects;

  void addProject(String name, String description) {
    _projects.add(Project(name: name, description: description));
    notifyListeners();
  }
}
