// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:todo_app/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  const DialogBox({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color.fromARGB(255, 133, 196, 247),
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task",
              ),
            ),

            //buttons -> save + cancel
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              MyButton(text: "Save", onPressed: () {}),
              const SizedBox(
                width: 8,
              ),

              //cancel button
              MyButton(text: "Cancel", onPressed: () {})
            ])
          ],
        ),
      ),
    );
  }
}
