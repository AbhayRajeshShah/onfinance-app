import 'package:flutter/material.dart';
import '../constants.dart';

class TechnicalData extends StatelessWidget {
  const TechnicalData(
      {Key? key, required this.head, required this.nume, required this.desce})
      : super(key: key);

  final String head;
  final String nume;
  final String desce;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                head,
                style: bottom_white,
              ),
              Text(
                nume,
                style: cyan,
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            desce,
            style: desc,
          )
        ],
      ),
    );
  }
}
