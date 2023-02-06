import 'package:flutter/material.dart';

class BottomHighlight extends StatelessWidget {
  const BottomHighlight({Key? key, required this.colour}) : super(key: key);

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 5,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(7),
            bottomRight: Radius.circular(7),
          ),
        ),
      ),
    );
  }
}
