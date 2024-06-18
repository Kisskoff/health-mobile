import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/color.dart';
import 'package:wallet_cryptocurrency/Health/ui/component.dart';
import 'package:wallet_cryptocurrency/Health/ui/screen/detail_wallet.dart';

import 'detailRevenu.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    _checklocal();
    print(Trans('revenue').tr);
    super.initState();
  }

  _checklocal() {
    print('voir qi tou passe');
    print('depenses');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailWalletScreen()),
                );
              },
              child: _cardWalletBalance(context,
                  total: '\$39.589',
                  totalCrypto: '7.251332 BTC',
                  precent: 7.999,
                  titre: Trans('depenses').tr),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailRevenue()),
                );
              },
              child: _cardWalletBalance(context,
                  total: '\$43.589',
                  totalCrypto: '5.251332 ETH',
                  precent: -2.999,
                  titre: Trans('revenue').tr),
            ),
          ]),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(Trans('Historique').tr,
                  style: TextStyle(color: Colors.black45)),
              Row(children: [
                Text(
                  Trans('mois').tr,
                  style: TextStyle(color: Colors.black45),
                ),
                Icon(Icons.keyboard_arrow_down, color: Colors.black45),
              ])
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  _listCryptoItem(
                    iconUrl:
                        'https://img.icons8.com/officel/80/traffic-jam.png',
                    myCrypto: '3.529020 XOF',
                    myProfit: Trans('depense').tr,
                    precent: '12/06/2024',
                  ),
                  _listCryptoItem(
                    iconUrl:
                        'https://img.icons8.com/officel/80/traffic-jam.png',
                    myCrypto: '12.83789 XOF',
                    myProfit: Trans('revenu').tr,
                    precent: '01/01/2024',
                  ),
                  _listCryptoItem(
                    iconUrl:
                        'https://img.icons8.com/officel/80/traffic-jam.png',
                    myCrypto: '1911.6374736 XOF',
                    myProfit: Trans('depense').tr,
                    precent: '12/01/2024',
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _cardWalletBalance(BuildContext context,
      {required String total,
      totalCrypto,
      required double precent,
      required String titre}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: card(
        width: MediaQuery.of(context).size.width - 50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipOval(
                  child: Material(
                    color: Colors.black87,
                    child: InkWell(
                      splashColor: rouge, // inkwell color
                      child: SizedBox(
                          width: 56,
                          height: 56,
                          child: Icon(
                            Icons.account_balance_wallet,
                            color: blanc,
                            size: 25.0,
                          )),
                      onTap: () {},
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Text(titre,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                Row(
                  children: [Text('Fcfa'), Icon(Icons.keyboard_arrow_down)],
                )
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$total',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.black87),
                ),
                /* Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                  decoration: BoxDecoration(
                      color: precent >= 0 ? Colors.green : Colors.pink,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                 child: Text(
                    precent >= 0 ? '+ $precent %' : '$precent %',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )*/
              ],
            ),
            SizedBox(height: 10),
            /*Text(
              '$totalCrypto',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.black38),
            ),*/
            Center(
              child: Icon(Icons.keyboard_arrow_down,
                  size: 30, color: Colors.black45),
            )
          ],
        ),
      ),
    );
  }

  Widget _listCryptoItem(
      {required String iconUrl,
      required String precent,
      required String myCrypto,
      required String myProfit}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(
              '$iconUrl',
              width: 50,
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '$myCrypto',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    '$myProfit',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  myProfit == 'Revenu'
                      ? Icons.arrow_upward
                      : Icons.arrow_downward,
                ),
                Text(
                  precent,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: myProfit == 'Revenu' ? Colors.green : Colors.pink,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
