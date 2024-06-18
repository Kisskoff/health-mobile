import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/button.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/color.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/texte.dart';

class App2 extends StatelessWidget {
  const App2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: blanc,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 90, 20, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(
                'https://pros.educ.queensu.ca/img/blog/7_intskillhealth.jpg'),
            //
            Container(
              padding: EdgeInsets.all(15),
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: rouge),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  titre1(text: 'APP 2'),
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
                    text: Trans("Continuer sur App2").tr,
                    color: blanc,
                    width: double.infinity,
                    textColor: rouge,
                    tap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (_) => Container(
                                width: double.infinity,
                                height: 50,
                                color: rouge,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    subtitleBold(
                                      text: 'Encours ...',
                                      textColor: blanc,
                                    )
                                  ],
                                ),
                              ));
                      // Navigator.of(context)
                      //     .push(MaterialPageRoute(builder: (_) => splash()));
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
