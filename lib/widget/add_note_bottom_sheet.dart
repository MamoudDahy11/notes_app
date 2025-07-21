import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/widget/custom_bottom.dart';
import 'package:note_app/widget/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15),
        CustomTextField(text: 'Title'),
        CustomTextField(text: 'Content', maxLine: 5),
        SizedBox(height: 80),
        CustomBotton(text: 'Add'),
      ],
    );
  }
}
