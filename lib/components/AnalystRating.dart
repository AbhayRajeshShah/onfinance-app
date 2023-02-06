import 'package:flutter/material.dart';
import '../constants.dart';

class AnalystRating extends StatefulWidget {
  const AnalystRating({super.key});

  @override
  State<AnalystRating> createState() => _AnalystRatingState();
}

class _AnalystRatingState extends State<AnalystRating> {
  bool open = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
      ),
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
      padding: const EdgeInsets.only(top: 12, left: 12, right: 12, bottom: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Expanded(
                  child: Text(
                    'STRONG BUY',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
                Expanded(
                  child: Text(
                    'BUY',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF3D3D45),
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'HOLD',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF3D3D45),
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'SELL',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF3D3D45),
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'STRONG SELL',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF3D3D45),
                    ),
                  ),
                ),
              ]),
          open
              ? Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 23, horizontal: 0),
                      padding: const EdgeInsets.symmetric(
                          vertical: 13, horizontal: 0),
                      decoration: const BoxDecoration(
                          border: Border(
                        top: BorderSide(
                          color: Color(0xff16161D),
                          width: 1.0,
                        ),
                        bottom: BorderSide(
                          color: Color(0xff16161D),
                          width: 1.0,
                        ),
                      )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            '64%',
                            style: TextStyle(
                                color: Color(0xFF38E1B8), fontSize: 40),
                          ),
                          Text(
                            'Buy rating',
                            style: TextStyle(
                                color: Color(0xFF38E1B8), fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Top Bulls',
                          style: desc,
                        ),
                        Text(
                          'Historical Accuracy',
                          style: desc,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    const AnalystDataRow(
                      desce: 'HDFC Asset Mngt. Co',
                      image: 'images/bull1.png',
                      per: '86%',
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    const AnalystDataRow(
                      desce: 'Solar Industries',
                      image: 'images/bull2.png',
                      per: '92%',
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          'Top Bears',
                          textAlign: TextAlign.start,
                          style: desc,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    const AnalystDataRow(
                      desce: 'United Spirits',
                      image: 'images/bear1.png',
                      per: '86%',
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    const AnalystDataRow(
                      desce: 'Home first finance',
                      image: 'images/bear2.png',
                      per: '92%',
                    ),
                  ],
                )
              : Container(),
          open == false
              ? const SizedBox(
                  height: 18,
                )
              : Container(),
          MaterialButton(
            onPressed: () {
              setState(() {
                open = !open;
              });
            },
            color: Colors.transparent,
            child: Icon(
              open ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
              color: const Color(0xFF252531),
            ),
          )
        ],
      ),
    );
  }
}

class AnalystDataRow extends StatelessWidget {
  const AnalystDataRow(
      {Key? key, required this.desce, required this.per, required this.image})
      : super(key: key);

  final String desce;
  final String per;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image(image: AssetImage(image)),
            const SizedBox(
              width: 11,
            ),
            Text(
              desce,
              style: desc_white,
            )
          ],
        ),
        Text(
          per,
          style: desc_white,
        ),
      ],
    );
  }
}
