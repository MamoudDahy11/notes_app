
import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(radius: 24, backgroundColor: Colors.blue);
  }
}

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return ColorItem();
        },
      ),
    );
  }
}
