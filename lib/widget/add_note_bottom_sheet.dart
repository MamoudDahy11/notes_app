import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_bottom.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            decoration: InputDecoration(
              // maintainHintHeight: false,
              hintText: 'Title',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 60, bottom: 60, left: 16),
              hintText: 'Content',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
          ),
        ),
        SizedBox(height: 80),
        CustomBotton(text: 'Add'),
      ],
    );
  }
}
