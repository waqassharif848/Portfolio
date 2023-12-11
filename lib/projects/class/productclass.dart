import 'package:flutter/cupertino.dart';

class Project {
  final String name;
  final String imagePath;

  Project({required this.name, required this.imagePath});
}

List<Project> projectList = [
  Project(name: 'Project 1', imagePath: 'Assets/ws.jpg'),

  Project(name: 'Project 2', imagePath: 'Assets/mine.jpg'),

];