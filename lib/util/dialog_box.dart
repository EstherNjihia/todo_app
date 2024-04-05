// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:todo_app/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;


  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  // mehod for onsave

  //method for oncance
  

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
              MyButton(text: "Save", onPressed:onSave),

              const SizedBox(
                width: 8,
              ),

              //cancel button
              MyButton(text: "Cancel", onPressed: onCancel)
            ])
          ],
        ),
      ),
    );
  }
}
