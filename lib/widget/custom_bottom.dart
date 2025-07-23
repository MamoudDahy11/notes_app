import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';

// ignore: must_be_immutable
class CustomBotton extends StatelessWidget {
  CustomBotton({
    super.key,
    required this.text,
    this.onTap,
    this.isLOading = false,
  });
  final String text;
  VoidCallback? onTap;
  bool isLOading;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 55,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: isLOading
                ? CircularProgressIndicator(color: Colors.black)
                : Text(
                    text,
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  ),
          ),
        ),
      ),
    );
  }
}
