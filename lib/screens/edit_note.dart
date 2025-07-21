import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_bottom.dart';
import 'package:note_app/widget/custom_search_icon.dart';
import 'package:note_app/widget/custom_text_field.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: const [CustomSearchIcon(icon: Icon(Icons.check))],
        title: Text(
          'Edit Note',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 15),
          CustomTextField(text: 'Title'),
          CustomTextField(text: 'Content', maxLine: 5),
          SizedBox(height: 50),
          CustomBotton(text: 'Add'),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
