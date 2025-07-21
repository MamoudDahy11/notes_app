
import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.text, this.maxLine = 1});
  final String text;
  final int maxLine;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        maxLines: maxLine,
        decoration: InputDecoration(
          // maintainHintHeight: false,
          hintText: text,
          hintStyle: TextStyle(
            color: kPrimaryColor,
            fontSize: 16, // Optional: customize font size
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
