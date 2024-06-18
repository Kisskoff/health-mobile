import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/analyse/analyse.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/button.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/color.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/persoComponent.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/texte.dart';

class InfoPersonnel extends StatefulWidget {
  InfoPersonnel({super.key});

  @override
  State<InfoPersonnel> createState() => _InfoPersonnelState();
}

class _InfoPersonnelState extends State<InfoPersonnel> {
  late var email = '';
  late var nom = '';

  @override
  void initState() {
    super.initState();
    print('ni');
    Timer.run(() {
      // _checklocal();
    });
  }

/*
  void _checklocal() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    //await localStorage.setString('nom',response.data['name'] );
    setState(() {
      email = localStorage.getString('email')!;
      nom = localStorage.getString('nom')!;
    });
    print('email' + email);
    print(localStorage.getString('email'));
  }
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fond,
      appBar: AppBar(
        title: subtitleBold(
          text: Trans('Information').tr,
          size: 17,
        ),
        backgroundColor: fond,
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                width: double.infinity,
                height: 170,
                decoration: BoxDecoration(
                  //color: blanc,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    //borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://i.pinimg.com/564x/3f/94/70/3f9470b34a8e3f526dbdb022f9f19cf7.jpg',
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: Column(
                  children: [
                    titre1(
                      text: Trans('Mes informations personnelles').tr,
                      size: 16,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    perso(titre: Trans('Nom').tr, text: nom),
                    const SizedBox(
                      height: 10,
                    ),
                    perso(titre: Trans('Téléphone').tr, text: '+225 059555850'),
                    const SizedBox(
                      height: 10,
                    ),
                    perso(titre: 'Email :', text: email),
                    const SizedBox(
                      height: 10,
                    ),
                    perso(
                        titre: Trans('Situation financiere').tr,
                        text: ' privée'),
                    const SizedBox(
                      height: 30,
                    ),
                    //
                    // boutton pre analyse
                    buttonCustom(
                      text: Trans('Debuter Votre pre-analyse').tr,
                      color: primary,
                      textColor: blanc,
                      width: MediaQuery.of(context).size.width,
                      tap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) => Analyse()));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
