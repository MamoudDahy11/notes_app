import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_search_icon.dart';
import 'package:note_app/widget/notes_list_view.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [CustomSearchIcon()],
        title: Text(
          'Notes',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: NotesListViewBuilder(),
    );
  }
}
