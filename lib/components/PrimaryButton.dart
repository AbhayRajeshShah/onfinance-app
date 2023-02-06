import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {Key? key,
      required this.text,
      required this.tColor,
      required this.bgColor})
      : super(key: key);

  final String text;
  final Color tColor;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        clipBehavior: Clip.hardEdge,
        child: MaterialButton(
          onPressed: () {},
          color: bgColor,
          child: Container(
            padding: const EdgeInsets.all(12),
            child: Center(
                child: Text(
              text,
              style: TextStyle(color: tColor, fontSize: 16),
            )),
          ),
        ),
      ),
    );
  }
}
