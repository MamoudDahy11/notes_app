import 'package:flutter/material.dart';
import 'package:note_app/screens/home_page.dart';

void main() {
  return runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: NoteView(),
    );
  }
}
