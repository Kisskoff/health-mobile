// ignore_for_file: unused_element
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/addMount.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/color.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/texte.dart';
import 'package:wallet_cryptocurrency/Health/ui/component.dart';

class DetailWalletScreen extends StatelessWidget {
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
                child: Icon(Icons.arrow_back, color: noir2)),
            title: Trans("depense").tr,
            right: Icon(Icons.more_vert, color: noir2),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: 20,
            ),
            _cardWallet(
              iconUrl:
                  'https://icons.iconarchive.com/icons/cjdowner/cryptocurrency/128/Bitcoin-icon.png',
              crypto: Trans("Solde Depense").tr,
              cryptoShort: 'FCFA',
              totalCrypto: '3.519020 FCFA',
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Container(
                  //   padding: EdgeInsets.symmetric(
                  //     horizontal: 12,
                  //     vertical: 7,
                  //   ),
                  //   decoration: BoxDecoration(
                  //     color: Colors.blueGrey[200],
                  //     borderRadius: BorderRadius.all(
                  //       Radius.circular(10),
                  //     ),
                  //   ),
                  //   child:
                  subtitleBold(
                    text: Trans("Informations").tr,
                    textColor: gris,
                    size: 16,
                  ),
                  // Text(
                  //   'Inforation:',
                  //   style: TextStyle(color: blanc),
                  // ),
                  // ),
                  Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                      decoration: BoxDecoration(
                          //color: Colors.blueGrey[200],
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text(
                        Trans("Informations").tr + '............',
                        style: TextStyle(
                          color: Colors.blueGrey[200],
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 10,
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
              height: 10,
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
                          builder: (_) => AddMount(operation: 'Transport'));
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
                    montant: '1000 cfa',
                    tap: () {
                      showDialog(
                          context: context,
                          builder: (_) => AddMount(operation: 'Alimentation'));
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: _actionButton(
                    text: Trans("ASSURANCE").tr,
                    color: Colors.blue,
                    icon:
                        'assets/assurance.png', //'https://img.icons8.com/officel/80/traffic-jam.png',
                    montant: '7110 cfa',
                    tap: () {
                      showDialog(
                          context: context,
                          builder: (_) => AddMount(operation: 'Assurance'));
                    },
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: _actionButton(
                    text: Trans("FACTURE").tr,
                    color: Colors.pink,
                    icon:
                        'assets/validating-ticket.png', //'https://img.icons8.com/officel/80/traffic-jam.png',
                    montant: '3050 cfa',
                    tap: () {
                      showDialog(
                          context: context,
                          builder: (_) => AddMount(operation: 'Facture'));
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: _actionButton(
                    text: Trans("SANTE").tr,
                    color: Colors.blue,
                    icon:
                        'assets/health.png', //'https://img.icons8.com/officel/80/traffic-jam.png',
                    montant: '110 cfa',
                    tap: () {
                      showDialog(
                          context: context,
                          builder: (_) => AddMount(operation: 'Sante'));
                    },
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: _actionButton(
                    text: Trans("COTISATION").tr,
                    color: Colors.pink,
                    icon:
                        'assets/contribution.png', //'https://img.icons8.com/officel/80/traffic-jam.png',
                    montant: '0 cfa',
                    tap: () {
                      showDialog(
                          context: context,
                          builder: (_) => AddMount(operation: 'Cotisation'));
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: _actionButton(
                    text: Trans("AUTRE").tr,
                    color: Colors.blue,
                    icon:
                        'assets/three-dots.png', //'https://img.icons8.com/officel/80/traffic-jam.png',
                    montant: '11000 cfa',
                    tap: () {
                      showDialog(
                          context: context,
                          builder: (_) => AddMount(operation: 'Autre'));
                    },
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: _actionButton(
                    text: Trans("ABONNEMENT").tr,
                    color: Colors.pink,
                    icon:
                        'assets/subscribe.png', //'https://img.icons8.com/officel/80/traffic-jam.png',
                    montant: '0 cfa',
                    tap: () {
                      showDialog(
                          context: context,
                          builder: (_) => AddMount(operation: 'Abonnement'));
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: _actionButton(
                    text: Trans("ACHAT").tr,
                    color: Colors.blue,
                    icon:
                        'assets/purchase.png', //'https://img.icons8.com/officel/80/traffic-jam.png',
                    montant: '110 cfa',
                    tap: () {
                      showDialog(
                          context: context,
                          builder: (_) => AddMount(operation: 'Achat'));
                    },
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: _actionButton(
                    text: Trans("MOBILE").tr,
                    color: Colors.pink,
                    icon:
                        'assets/mobile.png', //'https://img.icons8.com/officel/80/traffic-jam.png',
                    montant: '0 cfa',
                    tap: () {
                      showDialog(
                          context: context,
                          builder: (_) => AddMount(operation: 'Mobile'));
                    },
                  ),
                ),
              ],
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

  Widget _dot({
    double size = 10,
  }) {
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
          color: noir,
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
                // Text('$crypto',
                //     style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              subtitleBold(text: '$cryptoShort')
              //Text()
            ],
          ),
          SizedBox(height: 20),
          Center(
            child: subtitleBold(
              text: '$totalCrypto',
              size: 30,
              align: TextAlign.center,
            ),
          ),
          // Text(
          //   '$totalCrypto',
          //   style: TextStyle(
          //       fontWeight: FontWeight.bold,
          //       fontSize: 30,
          //       color: Colors.black87),
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [],
          ),
          Center(
            child: Icon(Icons.keyboard_arrow_down, size: 30, color: noir),
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
      splashColor: color,
      child: card(
          child: Row(
        children: [
          Container(
            child: Material(
              child: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image(
                    image: AssetImage(icon),
                    //image: NetworkImage(icon),
                    // width: 80,
                    // height: 80,
                  )),
            ),
          ),
          SizedBox(height: 5),
          Container(
            margin: EdgeInsets.all(2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                subtitleBold(
                  text: '$text',
                  size: 10,
                  textColor: color,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: subtitleBold(
                    text: '$montant',
                    size: 16,
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
