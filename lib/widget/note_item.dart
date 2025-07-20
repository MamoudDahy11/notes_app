import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.only(left: 24, top: 24, bottom: 24),
      decoration: BoxDecoration(
        color: Color(0XFFFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutter tips',
              style: TextStyle(color: Colors.black, fontSize: 35),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete, size: 40, color: Colors.black),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Text(
                'Build My career with Mahmoud Dahy',
                style: TextStyle(color: Colors.black54, fontSize: 19),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text('May 21/2022', style: TextStyle(color: Colors.black45)),
          ),
        ],
      ),
    );
  }
}
