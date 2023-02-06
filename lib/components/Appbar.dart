import 'package:flutter/material.dart';
import '../constants.dart';

class Appbar extends StatelessWidget {
  const Appbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.zero,
          topRight: Radius.zero,
          bottomLeft: Radius.circular(14),
          bottomRight: Radius.circular(14),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 32, bottom: 8, left: 12, right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.chevron_left,
                      size: 32,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      'Polygon',
                      style: white_head,
                    )
                  ],
                ),
                CircleAvatar(
                  backgroundColor: const Color(0xFF16161C),
                  child: Container(
                    padding: const EdgeInsets.all(3.0),
                    child: const Icon(
                      Icons.bookmark_border_outlined,
                      size: 18,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            child: Container(
              margin: const EdgeInsets.only(top: 16),
              color: const Color(0xFF16161C),
              height: 1,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 36),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Image(
                      image: AssetImage('images/logo.png'),
                      height: 48,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          '94.634',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Text(
                          'MATIC',
                          style:
                              TextStyle(color: Color(0xFF3455FF), fontSize: 14),
                        )
                      ],
                    )
                  ],
                ),
                MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  child: Row(
                    children: [
                      const Text(
                        'Discuss',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Stack(
                        alignment: AlignmentDirectional.topEnd,
                        children: [
                          const Icon(
                            Icons.chevron_right,
                            color: Colors.black,
                          ),
                          Transform(
                            transform: Matrix4.translationValues(6, 0, 0),
                            child: const Icon(
                              Icons.chevron_right,
                              color: Colors.black,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
