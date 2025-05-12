// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_4/ToDoTile.dart';

class MainPage extends StatefulWidget {
  bool isDark;
  MainPage({super.key, required this.isDark});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            "To Do App ",
            style: TextStyle(
              color: widget.isDark ? Colors.white : Color(0xff363e45),
              fontSize: 58,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 10),
        ToDoTile(
          task: "Submit Flutter development assignment",
          tileColor: widget.isDark ? Colors.blueGrey[200] : Color(0xffc0dcee),
        ),
        ToDoTile(
          task: "Read 10 pages of assigned reading material",
          tileColor: widget.isDark ? Colors.grey[350] : Color(0xffb8d9bc),
        ),
        ToDoTile(
          task: "Perform daily fitness routine",
          tileColor: widget.isDark ? Colors.blueGrey[200] : Color(0xffdbc7d9),
        ),
        ToDoTile(
          task: "Watch Flutter/Dart tutorial for skill enhancement",
          tileColor: widget.isDark ? Colors.grey[350] : Color(0xfff8d3b2),
        ),
        ToDoTile(
          task: "Update and refine professional resume",
          tileColor: widget.isDark ? Colors.blueGrey[200] : Color(0xffb7ccaf),
        ),
      ],
    );
  }
}
