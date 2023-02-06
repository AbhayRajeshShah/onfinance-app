import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/BottomHighlight.dart';
import '../components/PrimaryButton.dart';
import '../components/ImageTextContainer.dart';
import '../components/AboutData.dart';
import '../components/TechnicalData.dart';
import '../components/AnalystRating.dart';
import '../components/GraphArea.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
                color: const Color(0xFF111115),
                borderRadius: BorderRadius.circular(38)),
            child: Column(
              children: [
                const GraphArea(),
                Container(
                  margin: const EdgeInsets.only(left: 12, right: 12, top: 12),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.black),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Analyst Rating',
                        style: white_head,
                      ),
                      Icon(Icons.auto_awesome)
                    ],
                  ),
                ),
                SizedBox(
                  child: Container(
                    height: 1,
                    color: const Color(0x0F232323),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(12),
            color: Colors.black,
            child: Row(
              children: const [
                PrimaryButton(
                  text: 'BUY',
                  tColor: Colors.white,
                  bgColor: Color(0xFF3455FF),
                ),
                SizedBox(
                  width: 24,
                ),
                PrimaryButton(
                  text: 'Sell',
                  tColor: Colors.black,
                  bgColor: Colors.white,
                ),
              ],
            ),
          ),
          Container(
            color: const Color(0xFF111115),
            child: Column(children: [
              const AnalystRating(),
              const BottomHighlight(colour: Color(0xFF38E5BB)),
              Container(
                margin: const EdgeInsets.only(top: 33, left: 12, right: 12),
                padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Your Portfolio Exposure',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFF8B545)),
                      ),
                      Text(
                        '₹ 14,69,073',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 12),
                    color: const Color(0xFF111115),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'INVESTED',
                            style: TextStyle(
                                fontSize: 10, color: Color(0xFF61616a)),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: const [
                              Text(
                                '₹',
                                style: TextStyle(
                                    color: Color(0xFF6F6F6F), fontSize: 14),
                              ),
                              Text(
                                '6480',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              )
                            ],
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'QUANTITY',
                            style: TextStyle(
                                fontSize: 10, color: Color(0xFF61616a)),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            '1.5',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            'BROKER',
                            style: TextStyle(
                                fontSize: 10, color: Color(0xFF61616a)),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Image(
                            image: AssetImage('images/compass.png'),
                            width: 14,
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down,
                    color: Color(0xFF252531),
                  ),
                ]),
              ),
              const BottomHighlight(colour: Color(0xFFF8B545)),
            ]),
          ),
          Container(
            color: const Color(0xFF111115),
            child: Stack(
              children: [
                Transform(
                  transform: Matrix4.translationValues(0, 70, 3),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color(0xFF282831),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
                    // clipBehavior: Clip.hardEdge,
                    child: Column(
                      children: [
                        Container(
                          height: 30,
                          decoration: const BoxDecoration(
                              color: Color(0xFFD9D9D9),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(24),
                                  bottomRight: Radius.circular(24))),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 12, right: 12, bottom: 70),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 27, vertical: 33),
                          color: Colors.black,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'If You would have Invested',
                                style: TextStyle(
                                    color: Color(0xFF8D8D8D), fontSize: 18),
                              ),
                              const SizedBox(
                                height: 24,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    '\$100000',
                                    style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 26,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Slider(
                                      min: 80000,
                                      max: 500000,
                                      value: 300000,
                                      thumbColor: Colors.white,
                                      activeColor: const Color(0xFF3455FF),
                                      inactiveColor: const Color(0xFF202020),
                                      onChanged: (onChanged) {}),
                                ],
                              ),
                              const SizedBox(
                                height: 24,
                              ),
                              const Text(
                                'For Previous',
                                style: TextStyle(
                                    color: Color(0xFF8D8D8D), fontSize: 18),
                              ),
                              const SizedBox(
                                height: 24,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    '1 Year',
                                    style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 26,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Slider(
                                      min: 0.5,
                                      max: 2,
                                      value: 1,
                                      thumbColor: Colors.white,
                                      activeColor: const Color(0xFF3455FF),
                                      inactiveColor: const Color(0xFF202020),
                                      onChanged: (onChanged) {}),
                                ],
                              ),
                              const SizedBox(
                                height: 24,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  Text(
                                    '\$1120.78',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 32,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    '1205.67 MATIC',
                                    style: TextStyle(
                                        color: Color(0xFF3455FF),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 24,
                              ),
                              Row(
                                children: const [
                                  ImageTextContainer(
                                    bgColor: Color(0xFF3455FF),
                                    tColor: Colors.white,
                                    image: 'images/matic.png',
                                    text: 'MATIC',
                                  ),
                                  ImageTextContainer(
                                    bgColor: Color(0xFF0E0E0E),
                                    tColor: Color(0xFF5F5F5F),
                                    image: 'images/btc.png',
                                    text: 'BTC',
                                  ),
                                  ImageTextContainer(
                                    bgColor: Color(0xFF0E0E0E),
                                    tColor: Color(0xFF5F5F5F),
                                    image: 'images/compass.png',
                                    text: 'ETH',
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    alignment: Alignment.topCenter,
                    width: MediaQuery.of(context).size.width / 1.5,
                    margin: const EdgeInsets.only(top: 36),
                    decoration: const BoxDecoration(
                        color: Color(0x00000000),
                        border: Border(
                            bottom: BorderSide(
                          color: Colors.black,
                          width: 1.0, // Underline thickness
                        ))),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 30),
                          decoration: const BoxDecoration(
                            color: Color(0xFF282831),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(11),
                                topRight: Radius.circular(11)),
                          ),
                          child: const Text(
                            'HISTORICAL YIELD',
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.black,
            child: Container(
                height: 20,
                decoration: const BoxDecoration(
                  color: Color(0xFF282831),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width - 24,
                    color: Colors.black,
                  ),
                )),
          ),
          Container(
            color: Colors.black,
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'About MATIC',
                  style: blue_head,
                ),
                SizedBox(
                  height: 37,
                ),
                AboutData(
                  leftText: 'Market Cap',
                  rightText: '65,195 Cr.',
                ),
                AboutData(
                  leftText: 'Revenue',
                  rightText: '789,112.84 Cr.',
                  midText: '-50.2%',
                ),
                AboutData(
                  leftText: 'P/E Ratio',
                  rightText: '30.2',
                ),
                AboutData(
                  leftText: 'Profit',
                  rightText: '1098.48 Cr.',
                  midText: '-80.2%',
                ),
                AboutData(
                  leftText: 'Dividend Yield',
                  rightText: '1.92',
                ),
                SizedBox(
                  height: 37,
                ),
                Text(
                  'Technical Indicators',
                  style: blue_head,
                ),
                SizedBox(
                  height: 37,
                ),
                TechnicalData(
                  head: 'Cumulative Market Sentiment',
                  desce:
                      'This measures the sentiment of the investors for that particular stock or boin based on all the news articles, blogs, research papers, financial content featuring it.',
                  nume: '62.42',
                ),
                TechnicalData(
                  head: 'Relative Strength Index (RSI)',
                  desce:
                      'This measures the price movement of the securities, tell us if the stock or coin is overbought (above 70) or oversold (below 30)',
                  nume: '37.88',
                ),
                TechnicalData(
                  head: 'Volatility',
                  desce:
                      'This measures how much the stock or coin price is moving in any of the directions (upwards, downwards or directional) with respect to time.',
                  nume: '0.54',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
