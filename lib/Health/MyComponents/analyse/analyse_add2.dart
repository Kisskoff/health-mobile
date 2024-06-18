// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/saisie.dart';

class Analyse2 extends StatefulWidget {
  Function(int? number)? clickNext;
  int? numberOne;
  Analyse2({Key? key, required this.clickNext, required this.numberOne})
      : super(key: key);

  @override
  State<Analyse2> createState() => _Analyse2State();
}

class _Analyse2State extends State<Analyse2> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Form(
          child: Column(
            children: [
              saisie(
                title: Trans("Loyer").tr,
                hint: Trans("Montant").tr,
                keybord: TextInputType.number,
              ),
              const SizedBox(
                height: 20,
              ),
              saisie(
                title: Trans("Dépenses enfant").tr,
                hint: Trans("Montant").tr,
                keybord: TextInputType.number,
              ),
              const SizedBox(
                height: 20,
              ),
              saisie(
                title: Trans("Dépenses autre occupant").tr,
                hint: Trans("Montant").tr,
                keybord: TextInputType.number,
              ),
              const SizedBox(
                height: 20,
              ),
              saisie(
                title: Trans("Transport").tr,
                hint: Trans("Montant").tr,
                keybord: TextInputType.number,
              ),
              const SizedBox(
                height: 20,
              ),
              saisie(
                title: Trans("Consommation").tr,
                hint: Trans("Montant").tr,
                keybord: TextInputType.number,
              ),
              const SizedBox(
                height: 20,
              ),
              saisie(
                title: Trans("Nourriture").tr,
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
