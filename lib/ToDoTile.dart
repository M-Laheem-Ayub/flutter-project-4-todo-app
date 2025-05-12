// ignore_for_file: prefer_const_constructors_in_immutables, file_names, avoid_types_as_parameter_names

import 'package:flutter/material.dart';

class ToDoTile extends StatefulWidget {
  final String task;
  final Color? tileColor;
  ToDoTile({super.key, required this.task, required this.tileColor});

  @override
  State<ToDoTile> createState() => _ToDoTileState();
}

class _ToDoTileState extends State<ToDoTile> {
  bool value = false;
  void _onChange(bool) {
    setState(() {
      value = !value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5),
      child: Container(
        height: 65,
        decoration: BoxDecoration(
          color: widget.tileColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          spacing: 20,
          children: [
            Checkbox(
              activeColor: Colors.black,
              value: value,
              onChanged: _onChange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 25.0),
                child: Text(
                  softWrap: true,
                  overflow: TextOverflow.visible,
                  widget.task,
                  style: TextStyle(
                    color: Colors.black,
                    decoration:
                        value
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
