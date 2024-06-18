import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/color.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/texte.dart';

class Apropos extends StatelessWidget {
  const Apropos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fond,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: fond,
        leading: GestureDetector(
          child: Icon(Icons.close),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'lottie/acc.json',
              width: 300,
              height: 300,
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 30,
            ),
            titre1(
              text: 'COSAFID',
              size: 30,
            ),
            const SizedBox(
              height: 10,
            ),
            subtitleBold(
              text:
                  'Votre diagnostic financier health money. Plus q\'un conseiller financier, un ami',
              textColor: gris,
              align: TextAlign.center,
              size: 17,
            ),
            const SizedBox(
              height: 50,
            ),
            titre1(
              text: 'Health Money',
            ),
            subtitleBold(
              text: 'Version: 1.0.0',
              textColor: gris,
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              child: subtitleBold(
                text: "Termes et conditions",
                textColor: primary,
              ),
              onTap: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 20,
              height: 2,
              color: gris,
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              child: subtitleBold(
                text: "politiques de confidentialités",
                textColor: primary,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
