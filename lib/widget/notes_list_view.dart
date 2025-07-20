import 'package:flutter/material.dart';
import 'package:note_app/widget/note_item.dart';

class NotesListViewBuilder extends StatelessWidget {
  const NotesListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // itemCount: 2,
      itemBuilder: (context, index) {
        return NoteItem();
      },
    );
  }
}
