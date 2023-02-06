import 'package:flutter/material.dart';
import './Text_container.dart';

class AboutData extends StatelessWidget {
  const AboutData(
      {Key? key,
      required this.leftText,
      required this.rightText,
      this.midText = ''})
      : super(key: key);

  final String leftText;
  final String rightText;
  final String midText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(leftText,
                  style:
                      const TextStyle(color: Color(0xFF5F5F68), fontSize: 18)),
              midText == ''
                  ? Text(
                      rightText,
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    )
                  : Row(
                      children: [
                        Text_Container(
                            text: midText,
                            color: const Color(0xFFED1515),
                            bgcolor: const Color(0xFF1A1A1A)),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          rightText,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 18),
                        )
                      ],
                    )
            ],
          ),
          const SizedBox(
            height: 7,
          ),
          Container(
            height: 1,
            color: const Color(0xFF1C1C1C),
          )
        ],
      ),
    );
  }
}
