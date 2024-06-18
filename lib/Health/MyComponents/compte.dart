import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/button.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/color.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/saisie.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/texte.dart';

class MonCompte extends StatefulWidget {

  @override
  State<MonCompte> createState() => _MonCompteState();
}

class _MonCompteState extends State<MonCompte> {
  TextEditingController nomController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController villeController = TextEditingController();
  TextEditingController financeController = TextEditingController();
  TextEditingController sitController = TextEditingController();

  bool nomRead = false;
  bool mailRead = false;
  bool phoneRead = false;
  bool villeRead = false;
  bool finaceRead = false;
  bool sitRead = false;

  bool statut = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fond,
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.close),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        title: subtitleBold(
            text:
            Trans('Mes informations').tr, size: 17),
        backgroundColor: fond,
        elevation: 0,
        //scrolledUnderElevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 30,
          ),
          child: SingleChildScrollView(
              child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: primary,
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://i.pinimg.com/564x/3f/94/70/3f9470b34a8e3f526dbdb022f9f19cf7.jpg',
                          ),
                        )),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: statut ? vert : rouge,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              subtitleBold(text:
              Trans("Votre compte restera actif jusqu'au").tr),
              const SizedBox(
                height: 5,
              ),
              subtitleBold(
                text: '16/02/2024',
                textColor: primary,
                size: 16,
              ),
              const SizedBox(
                height: 15,
              ),

              // form
              Form(
                child: Column(
                  children: [
                    // nom
                    saisieInfo(
                      title:Trans("Nom et Prenoms").tr,
                      hint: Trans("Nom et Prenoms").tr,
                      keybord: TextInputType.name,
                      read: nomRead,
                      readClic: () {
                        setState(() {
                          nomRead = !nomRead;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    // email
                    saisieInfo(
                      title: "Email",
                      hint: 'Email',
                      keybord: TextInputType.emailAddress,
                      read: mailRead,
                      readClic: () {
                        setState(() {
                          mailRead = !mailRead;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    // telephone
                    saisiePhone(
                      read: phoneRead,
                      controller: phoneController,
                      readClic: () {
                        setState(
                          () {
                            phoneRead = !phoneRead;
                          },
                        );
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                    // ville
                    saisieInfo(
                      title: Trans("Ville").tr,
                      hint: Trans("Ville").tr,
                      keybord: TextInputType.name,
                      controller: villeController,
                      read: villeRead,
                      readClic: () {
                        setState(
                          () {
                            villeRead = !villeRead;
                          },
                        );
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    // situation financiere
                    saisieInfo(
                      title: Trans("Situation financiere").tr,
                      hint: Trans("Situation financiere").tr,
                      keybord: TextInputType.name,
                      controller: sitController,
                      read: sitRead,
                      readClic: () {
                        setState(
                          () {
                            sitRead = !sitRead;
                          },
                        );
                      },
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    // boutton valider
                    buttonCustom(
                      text: Trans("Enregistrer les modification").tr,
                      color: primary,
                      textColor: blanc,
                      width: MediaQuery.of(context).size.width,
                      tap: () {},
                    ),
                  ],
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
