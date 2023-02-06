import 'package:flutter/material.dart';

class ImageTextContainer extends StatelessWidget {
  const ImageTextContainer(
      {Key? key,
      required this.text,
      required this.tColor,
      required this.bgColor,
      required this.image})
      : super(key: key);

  final String text;
  final Color tColor;
  final Color bgColor;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: const BorderRadius.all(Radius.circular(4))),
      child: MaterialButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(image),
              height: 14,
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              text,
              style: TextStyle(
                  color: tColor, fontSize: 14, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
