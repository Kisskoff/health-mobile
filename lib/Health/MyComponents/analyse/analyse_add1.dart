// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/saisie.dart';

class Analyse1 extends StatefulWidget {
  Function(int? number)? clickNext;
  int? numberOne;
  Analyse1({Key? key, required this.clickNext, required this.numberOne})
      : super(key: key);

  @override
  State<Analyse1> createState() => _Analyse1State();
}

class _Analyse1State extends State<Analyse1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Form(
            child: Column(
              children: [
                saisie(
                  title: Trans("Salaire").tr,
                  hint: Trans("Salaire").tr,
                  keybord: TextInputType.number,
                ),
                const SizedBox(
                  height: 20,
                ),
                saisie(
                  title: Trans("Salaire conjoint").tr,
                  hint: Trans("Salaire conjoint").tr,
                  keybord: TextInputType.number,
                ),
                const SizedBox(
                  height: 20,
                ),
                saisie(
                  title: Trans("Primes").tr,
                  hint: Trans("Primes").tr,
                  keybord: TextInputType.number,
                ),
                const SizedBox(
                  height: 20,
                ),
                saisie(
                  title: Trans("Complément enfant").tr,
                  hint: Trans("Complément enfant").tr,
                  keybord: TextInputType.number,
                ),
                const SizedBox(
                  height: 20,
                ),
                saisie(
                  title: Trans("Revenus immobiliers").tr,
                  hint: Trans("Revenus immobiliers").tr,
                  keybord: TextInputType.number,
                ),
                const SizedBox(
                  height: 20,
                ),
                saisie(
                  title: Trans("Autres revenus").tr,
                  hint: Trans("Autres revenus").tr,
                  keybord: TextInputType.number,
                ),
                const SizedBox(
                  height: 20,
                ),
                // buttonCustom(
                //   text: 'Suivant',
                //   width: MediaQuery.of(context).size.width / 2,
                //   color: primary,
                //   textColor: blanc,
                //   tap: () {
                //     Navigator.of(context).push(
                //         MaterialPageRoute(builder: (_) => Analyse2()));
                //   },
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
