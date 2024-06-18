import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Widget/card.dart';

class Historique extends StatefulWidget {
  const Historique({super.key});

  @override
  State<Historique> createState() => _HistoriqueState();
}

class _HistoriqueState extends State<Historique> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // Expanded(
        //   child:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                _listCryptoItem(
                  iconUrl: 'https://img.icons8.com/officel/80/traffic-jam.png',
                  myCrypto: '3.529020 XOF',
                  myProfit: Trans('depense').tr,
                  precent: '12/06/2024',
                ),
                _listCryptoItem(
                  iconUrl: 'https://img.icons8.com/officel/80/traffic-jam.png',
                  myCrypto: '12.83789 XOF',
                  myProfit: Trans('revenu').tr,
                  precent: '01/01/2024',
                ),
                _listCryptoItem(
                  iconUrl: 'https://img.icons8.com/officel/80/traffic-jam.png',
                  myCrypto: '1911.6374736 XOF',
                  myProfit: Trans('depense').tr,
                  precent: '12/01/2024',
                ),
                _listCryptoItem(
                  iconUrl: 'https://img.icons8.com/officel/80/traffic-jam.png',
                  myCrypto: '1911.6374736 XOF',
                  myProfit: Trans('depense').tr,
                  precent: '12/01/2024',
                ),
                _listCryptoItem(
                  iconUrl: 'https://img.icons8.com/officel/80/traffic-jam.png',
                  myCrypto: '1911.6374736 XOF',
                  myProfit: Trans('depense').tr,
                  precent: '12/01/2024',
                ),
                _listCryptoItem(
                  iconUrl: 'https://img.icons8.com/officel/80/traffic-jam.png',
                  myCrypto: '1911.6374736 XOF',
                  myProfit: Trans('depense').tr,
                  precent: '12/01/2024',
                ),
                _listCryptoItem(
                  iconUrl: 'https://img.icons8.com/officel/80/traffic-jam.png',
                  myCrypto: '1911.6374736 XOF',
                  myProfit: Trans('depense').tr,
                  precent: '12/01/2024',
                ),
                _listCryptoItem(
                  iconUrl: 'https://img.icons8.com/officel/80/traffic-jam.png',
                  myCrypto: '1911.6374736 XOF',
                  myProfit: Trans('depense').tr,
                  precent: '12/01/2024',
                ),
                _listCryptoItem(
                  iconUrl: 'https://img.icons8.com/officel/80/traffic-jam.png',
                  myCrypto: '1911.6374736 XOF',
                  myProfit: Trans('depense').tr,
                  precent: '12/01/2024',
                ),
                _listCryptoItem(
                  iconUrl: 'https://img.icons8.com/officel/80/traffic-jam.png',
                  myCrypto: '1911.6374736 XOF',
                  myProfit: Trans('depense').tr,
                  precent: '12/01/2024',
                ),
                _listCryptoItem(
                  iconUrl: 'https://img.icons8.com/officel/80/traffic-jam.png',
                  myCrypto: '1911.6374736 XOF',
                  myProfit: Trans('depense').tr,
                  precent: '12/01/2024',
                ),
              ],
            ),
          ),
        ),
        // ),
      ],
    );
  }
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
