import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_bottom.dart';
import 'package:note_app/widget/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(child: AddNoteForm());
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 15),
          CustomTextField(
            text: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          CustomTextField(
            text: 'Content',
            maxLine: 5,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          const SizedBox(height: 80),
          CustomBotton(
            text: 'Add',
            onTap: () { 
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
            },
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}

