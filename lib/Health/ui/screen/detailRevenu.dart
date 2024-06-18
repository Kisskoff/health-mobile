// ignore_for_file: unnecessary_import, unused_element

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/addMount.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/color.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/texte.dart';

import '../../Widget/appBar.dart';
import '../../Widget/card.dart';

class DetailRevenue extends StatelessWidget {
  const DetailRevenue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fond,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: SafeArea(
          child: appBar(
              left: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Icon(Icons.arrow_back_ios, color: Colors.black54)),
              title: Trans("Revenus").tr,
              right: Icon(Icons.more_vert, color: Colors.black54)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: 25,
            ),
            _cardWallet(
              iconUrl:
                  'https://icons.iconarchive.com/icons/cjdowner/cryptocurrency/128/Bitcoin-icon.png',
              crypto: Trans("Solde").tr,
              cryptoShort: 'FCFA',
              totalCrypto: '3.519020 FCFA',
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                    decoration: BoxDecoration(
                        //color: Colors.blueGrey[200],
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: subtitleBold(
                      text: Trans("Informations").tr,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                    decoration: BoxDecoration(
                        //color: Colors.blueGrey[200],
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: subtitleBold(
                      text: Trans("Informations").tr,
                      textColor: Colors.blueGrey[200],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            /*
            card(
              padding: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            _dot(color: Colors.pink),
                            Text(
                              'Lower: \$4.896',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black45),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            _dot(color: Colors.green),
                            Text(
                              'Higher:\$6.857',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black45),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 5,
                    child: Stack(children: [
                      LineChart(
                        sampleData(),
                      ),
                      Positioned(
                        bottom: 20,
                        left: 20,
                        child: Row(
                          children: [
                            _dot(size: 18, color: Colors.orangeAccent),
                            Text(
                              '1BTC=\$5.483',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),*/
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: _actionButton(
                    text: Trans("TRANSPORT").tr,
                    color: Colors.blue,
                    icon:
                        'assets/car.png', //'https://img.icons8.com/officel/80/traffic-jam.png',
                    montant: '110 cfa',
                    tap: () {
                      showDialog(
                          context: context,
                          builder: (_) =>
                              AddMount(operation: 'Transport revenu'));
                    },
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: _actionButton(
                    text: Trans("ALIMENTATION").tr,
                    color: Colors.pink,
                    icon:
                        'assets/diet.png', //'https://img.icons8.com/officel/80/traffic-jam.png',
                    montant: '0 cfa',
                    tap: () {
                      showDialog(
                          context: context,
                          builder: (_) =>
                              AddMount(operation: 'Alimentation revenu'));
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  LineChartData sampleData() {
    return LineChartData(
      lineTouchData: LineTouchData(
        enabled: false,
      ),
      gridData: FlGridData(
        show: false,
      ),
      titlesData: FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      // minX: 0,
      maxX: 12,
      maxY: 4,
      minY: 0,
      lineBarsData: linesBarData(),
    );
  }

  List<LineChartBarData> linesBarData() {
    return [
      LineChartBarData(
        spots: [
          FlSpot(1, 2),
          FlSpot(3, 2.8),
          FlSpot(7, 2.2),
          FlSpot(10, 2.8),
          FlSpot(12, 2.6),
          FlSpot(13, 3),
        ],
        isCurved: true,
        color: Colors.orangeAccent,
        barWidth: 4,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: false,
        ),
        belowBarData: BarAreaData(
          show: true,
          color: Colors.orange[100],
        ),
      ),
    ];
  }

  Widget _dot({double size = 10, Color color = Colors.black}) {
    return Container(
      margin: EdgeInsets.all(10),
      width: size,
      height: size,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)),
        child: Container(
          color: color,
        ),
      ),
    );
  }

  Widget _cardWallet({
    required String crypto,
    cryptoShort,
    iconUrl,
    totalCrypto,
  }) {
    return card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.network(
                '$iconUrl',
                width: 50,
              ),
              SizedBox(width: 20),
              Expanded(
                child: subtitleBold(
                  text: '$crypto',
                ),
              ),
              subtitleBold(
                text: '$cryptoShort',
              ),
            ],
          ),
          SizedBox(height: 20),
          Center(
            child: subtitleBold(
              text: '$totalCrypto',
              size: 30,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [],
          ),
          Center(
            child: Icon(Icons.keyboard_arrow_down,
                size: 30, color: Colors.black45),
          )
        ],
      ),
    );
  }

  Widget _actionButton(
      {VoidCallback? tap,
      required Color color,
      required String text,
      required String icon,
      required String montant}) {
    return InkWell(
      onTap: tap,
      child: card(
        child: Row(
          children: [
            Container(
              child: Material(
                child: SizedBox(
                  width: 40,
                  height: 30,
                  child: Image(
                    image: AssetImage(icon), //NetworkImage(icon),
                    width: 80,
                    height: 80,
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              margin: EdgeInsets.all(2),
              child: Column(
                children: [
                  subtitleBold(
                    text: '$text',
                    size: 9,
                  ),
                  Container(
                    child: subtitleBold(
                      text: '$montant',
                      size: 10,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
