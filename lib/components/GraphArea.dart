import 'package:flutter/material.dart';
import 'package:onfinance/constants.dart';
import '../components/Appbar.dart';
import '../components/Text_container.dart';

class GraphArea extends StatefulWidget {
  const GraphArea({super.key});

  @override
  State<GraphArea> createState() => _GraphAreaState();
}

class _GraphAreaState extends State<GraphArea> {
  bool isLine = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 36,
      child: Column(
        children: [
          const Appbar(),
          const SizedBox(
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(4)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.stacked_line_chart_outlined,
                          color: Color(0xFF00EB7A)),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        '2.79 %',
                        style:
                            TextStyle(color: Color(0xFF00EB7A), fontSize: 14),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text_Container(
                  text: isLine ? 'Ascending Angle' : 'MA',
                  color: const Color(0xFF98B5FF),
                  bgcolor: const Color(0xFF202027),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text_Container(
                  text: isLine ? 'High exposure' : 'RSI',
                  color: isLine
                      ? const Color(0xFFFF4545)
                      : const Color(0xFF98B5FF),
                  bgcolor: const Color(0xFF202027),
                ),
              ],
            ),
          ),
          const Spacer(),
          Image(
            image:
                AssetImage(isLine ? 'images/chart.png' : 'images/candle.png'),
            width: isLine
                ? MediaQuery.of(context).size.width
                : MediaQuery.of(context).size.width - 64,
          ),
          const Spacer(),
          isLine
              ? Container()
              : Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) => Container(
                                  height:
                                      MediaQuery.of(context).size.height - 132,
                                  color: const Color(0xFF111115),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.all(24),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Text(
                                                  'Indicators',
                                                  style: TextStyle(
                                                      color: Color(0xFF98B5FF),
                                                      fontSize: 20),
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: const CircleAvatar(
                                                    backgroundColor:
                                                        Color(0xFF2A2A35),
                                                    child: Text('X'),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 1,
                                            color: const Color(0xFF26262F),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 5, horizontal: 10),
                                            margin: const EdgeInsets.all(12),
                                            color: const Color(0xFF141418),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: const [
                                                Text(
                                                  'MA',
                                                  style: TextStyle(
                                                      color: Color(0xFF3455FF)),
                                                ),
                                                SizedBox(
                                                  width: 6,
                                                ),
                                                Text(
                                                  'X',
                                                  style: TextStyle(
                                                      color: Color(0xFF2E2E32)),
                                                )
                                              ],
                                            ),
                                          ),
                                          const Indicator(
                                            desce: 'MA - Moving Average',
                                            icon: true,
                                          ),
                                          Container(
                                            margin: const EdgeInsets.symmetric(
                                                vertical: 12, horizontal: 56),
                                            child: Row(
                                              children: const [
                                                Image(
                                                  image: AssetImage(
                                                      'images/tick_box.png'),
                                                  width: 20,
                                                ),
                                                SizedBox(
                                                  width: 9,
                                                ),
                                                Text('10 day'),
                                                SizedBox(
                                                  width: 18,
                                                ),
                                                Image(
                                                  image: AssetImage(
                                                      'images/tick_box.png'),
                                                  width: 20,
                                                ),
                                                SizedBox(
                                                  width: 9,
                                                ),
                                                Text('30 day'),
                                              ],
                                            ),
                                          ),
                                          const Indicator(
                                              desce:
                                                  'RSI - Relative Strength Index',
                                              icon: false),
                                          const Indicator(
                                              desce: 'BOLL  - Bollinger Bands',
                                              icon: false),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const SizedBox(
                                            width: 3,
                                          ),
                                          Expanded(
                                            child: Container(
                                              decoration: const BoxDecoration(
                                                color: Color(0xFF1D1D24),
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(3),
                                                ),
                                              ),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 22),
                                              child: MaterialButton(
                                                child: const Text('Reset'),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 3,
                                          ),
                                          Expanded(
                                            child: Container(
                                              decoration: const BoxDecoration(
                                                color: Color(0xFF000000),
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(3),
                                                ),
                                              ),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 22),
                                              child: MaterialButton(
                                                child: const Text('Apply'),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 3,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ));
                      },
                      child: Container(
                        alignment: Alignment.centerRight,
                        decoration: const BoxDecoration(
                            color: Color(0xFF070707),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xFF1E1E24),
                                  spreadRadius: 1,
                                  blurRadius: 6),
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.show_chart,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Indicators',
                              style: desc_white,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    height: 49,
                    decoration: BoxDecoration(
                        color: const Color(0xFF070707),
                        borderRadius: BorderRadius.circular(8)),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text_Container(
                          text: '1H',
                          color: Colors.white,
                          fontSize: 14,
                          bgcolor: Color(0xFF3455FF),
                        ),
                        Text_Container(
                          text: '1D',
                          fontSize: 14,
                          color: Color(0xFF434343),
                          bgcolor: Color(0x00000000),
                        ),
                        Text_Container(
                          text: '1W',
                          fontSize: 14,
                          color: Color(0xFF434343),
                          bgcolor: Color(0x00000000),
                        ),
                        Text_Container(
                          text: '1M',
                          fontSize: 14,
                          color: Color(0xFF434343),
                          bgcolor: Color(0x00000000),
                        ),
                        Text_Container(
                          text: '5Y',
                          fontSize: 14,
                          color: Color(0xFF434343),
                          bgcolor: Color(0x00000000),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      isLine = !isLine;
                    });
                  },
                  child: Image(
                    image: AssetImage(isLine
                        ? 'images/candle_icon.png'
                        : 'images/line_icon.png'),
                    width: 49,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Indicator extends StatelessWidget {
  const Indicator({Key? key, required this.desce, required this.icon})
      : super(key: key);

  final String desce;
  final bool icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 12),
          child: const Image(
            image: AssetImage(
              'images/tick_box.png',
            ),
            width: 20,
          ),
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
                color: Color(0xFF282830),
                borderRadius: BorderRadius.all(Radius.circular(4))),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            margin: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  desce,
                ),
                Icon(
                  icon
                      ? Icons.keyboard_arrow_up_outlined
                      : Icons.keyboard_arrow_down,
                  size: 15,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
