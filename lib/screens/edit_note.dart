import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widget/custom_bottom.dart';
import 'package:note_app/widget/custom_search_icon.dart';
import 'package:note_app/widget/custom_text_field.dart';

class EditNote extends StatefulWidget {
  const EditNote({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  State<EditNote> createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: const [CustomSearchIcon(icon: Icon(Icons.check))],
        title: const Text(
          'Edit Note',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 15),
          CustomTextField(
            text: 'Title',
            onChanged: (value) {
              title = value;
            },
          ),
          CustomTextField(
            text: 'Content',
            maxLine: 5,
            onChanged: (value) {
              subTitle = value;
            },
          ),
          const SizedBox(height: 50),
          CustomBotton(
            text: 'Edit',
            onTap: () {
              widget.noteModel.title = title ?? widget.noteModel.title;
              widget.noteModel.subTitle = subTitle ?? widget.noteModel.subTitle;
              widget.noteModel.save();
              BlocProvider.of<NotesCubit>(context).fetchAlllNotes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
