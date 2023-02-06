import 'package:flutter/material.dart';

class Text_Container extends StatelessWidget {
  const Text_Container(
      {super.key,
      required this.text,
      required this.color,
      required this.bgcolor,
      this.fontSize = 12});
  final String text;
  final Color color;
  final Color bgcolor;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
          horizontal: 12, vertical: fontSize == 12.toDouble() ? 6 : 3),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(4), color: bgcolor),
      child: Text(
        text,
        style: TextStyle(fontSize: fontSize, color: color),
      ),
    );
  }
}
