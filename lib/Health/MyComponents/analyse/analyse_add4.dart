// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/saisie.dart';

class Analyse4 extends StatefulWidget {
  Function(int? number)? clickNext;
  int? numberOne;
  Analyse4({Key? key, required this.clickNext, required this.numberOne})
      : super(key: key);

  @override
  State<Analyse4> createState() => _Analyse4State();
}

class _Analyse4State extends State<Analyse4> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Form(
          child: Column(
            children: [
              saisie(
                title: Trans("Assurance Vie").tr,
                hint: Trans("Montant").tr,
                keybord: TextInputType.number,
              ),
              const SizedBox(
                height: 20,
              ),
              saisie(
                title: Trans("Assurance éducation").tr,
                hint: Trans("Montant").tr,
                keybord: TextInputType.number,
              ),
              const SizedBox(
                height: 20,
              ),
              saisie(
                title: Trans("Assurance Retraite").tr,
                hint: Trans("Montant").tr,
                keybord: TextInputType.number,
              ),
              const SizedBox(
                height: 20,
              ),
              saisie(
                title: Trans("Jeux/Divertissements").tr,
                hint: Trans("Montant").tr,
                keybord: TextInputType.number,
              ),
              const SizedBox(
                height: 20,
              ),
              saisie(
                title: Trans("Pont à péage ou don").tr,
                hint: Trans("Montant").tr,
                keybord: TextInputType.number,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
