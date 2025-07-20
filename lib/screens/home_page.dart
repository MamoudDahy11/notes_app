import 'package:flutter/material.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, size: 30),
            ),
          ),
        ],
        title: Text(
          'Notes',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        padding: EdgeInsets.all(16),
        height: 230,
        decoration: BoxDecoration(
          color: Colors.amber.shade100,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 16),
              child: Text(
                'Flutter tips',
                style: TextStyle(color: Colors.black, fontSize: 35),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete, size: 40, color: Colors.black45),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Build My career with',
                style: TextStyle(color: Colors.black54, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Mahmoud Dahy',
                style: TextStyle(color: Colors.black54, fontSize: 18),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Text(
                    'May 21/2022',
                    style: TextStyle(color: Colors.black45),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
