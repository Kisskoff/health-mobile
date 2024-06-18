import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_cryptocurrency/Health/Accueil/splash.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/button.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/color.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/texte.dart';

class Health extends StatelessWidget {
  const Health({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: transparent,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 90, 20, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(
                'https://1health.fr/img/header/logo_1health-1200-630.png'),
            //
            Container(
              padding: EdgeInsets.all(15),
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: primary),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  titre1(text: 'HEALTH MONEY'),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: subtitleBold(
                      line: 6,
                      size: 16,
                      textColor: gris2,
                      text:
                          "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu\'il est prêt ou que la mise en page est achevée.",
                    ),
                  ),
                  buttonCustom(
                    text: Trans("Continuer sur h&m").tr,
                    color: blanc,
                    width: double.infinity,
                    textColor: primary,
                    tap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => splash()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
