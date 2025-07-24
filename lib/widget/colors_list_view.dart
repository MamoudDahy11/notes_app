import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/cubit/notes_cubit/notes_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 24,
            backgroundColor: Colors.white,
            child: CircleAvatar(radius: 20, backgroundColor: color),
          )
        : CircleAvatar(radius: 24, backgroundColor: color);
  }
}

class ListViewItem extends StatefulWidget {
  const ListViewItem({super.key});

  @override
  State<ListViewItem> createState() => _ListViewItemState();
}

class _ListViewItemState extends State<ListViewItem> {
  List<Color> colors = const [
    Color(0XFF0B2027),
    Color(0XFF40798C),
    Color(0XFF70A9A1),
    Color(0XFFCED6C6),
    Color(0XFFF6F1D1),
    Color(0XFF0B2027),
    Color(0XFF40798C),
    Color(0XFF70A9A1),
    Color(0XFFCED6C6),
    Color(0XFFF6F1D1),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                setState(() {});
              },
              child: ColorItem(
                isActive: currentIndex == index,
                color: colors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
