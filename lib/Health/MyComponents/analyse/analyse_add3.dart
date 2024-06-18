// ignore_for_file: must_be_immutable
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/saisie.dart';

class Analyse3 extends StatefulWidget {
  Function(int? number)? clickNext;
  int? numberOne;
  Analyse3({Key? key, required this.clickNext, required this.numberOne})
      : super(key: key);

  @override
  State<Analyse3> createState() => _Analyse3State();
}

class _Analyse3State extends State<Analyse3> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Form(
          child: Column(
            children: [
              saisie(
                title: Trans("Abonnement TV").tr,
                hint: Trans("Montant").tr,
                keybord: TextInputType.number,
              ),
              const SizedBox(
                height: 20,
              ),
              saisie(
                title: Trans("Abonnement Téléphone").tr,
                hint: Trans("Montant").tr,
                keybord: TextInputType.number,
              ),
              const SizedBox(
                height: 20,
              ),
              saisie(
                title: Trans("Abonnement Internet").tr,
                hint: Trans("Montant").tr,
                keybord: TextInputType.number,
              ),
              const SizedBox(
                height: 20,
              ),
              saisie(
                title: Trans("Facture d'électricité").tr,
                hint: Trans("Montant").tr,
                keybord: TextInputType.number,
              ),
              const SizedBox(
                height: 20,
              ),
              saisie(
                title: Trans("Facture d'eau").tr,
                hint: Trans("Montant").tr,
                keybord: TextInputType.number,
              ),
              const SizedBox(
                height: 20,
              ),
              saisie(
                title: Trans("Assurance Santé").tr,
                hint: Trans("Montant").tr,
                keybord: TextInputType.number,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
