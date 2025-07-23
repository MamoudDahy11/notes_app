import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:note_app/widget/add_note_bottom_sheet.dart';
import 'package:note_app/widget/custom_search_icon.dart';
import 'package:note_app/widget/notes_list_view.dart';

class NoteView extends StatefulWidget {
  const NoteView({super.key});

  @override
  State<NoteView> createState() => _NoteViewState();
}

class _NoteViewState extends State<NoteView> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAlllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              },
            );
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          actions: [CustomSearchIcon(icon: Icon(Icons.delete, size: 30))],
          title: Text(
            'Notes',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        body: const NotesListViewBuilder(),
      ),
    );
  }
}
