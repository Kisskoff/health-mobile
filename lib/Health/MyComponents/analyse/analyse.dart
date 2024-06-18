import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/analyse/analyse_add1.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/analyse/analyse_add2.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/analyse/analyse_add3.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/analyse/analyse_add4.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/button.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/color.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/dialog.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/texte.dart';
import 'package:wallet_cryptocurrency/Health/ui/aces/home.dart';

class Analyse extends StatefulWidget {
  const Analyse({super.key});

  @override
  State<Analyse> createState() => _AnalyseState();
}

class _AnalyseState extends State<Analyse> {
  int etape = 0;
  var _onboardController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.close),
          onTap: () => Navigator.of(context).pop(),
        ),
        elevation: 0,
        //title: Text('$etape'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Column(
          children: [
            Row(
              children: [
                subtitleBold(
                  text: Trans("Prévisions des revenus mensuelles")
                      .tr
                      .toUpperCase(), //'Prévisions des revenus mensuelles :'.toUpperCase(),
                  size: 12,
                ),
              ],
            ),
            subtitleBold(
              text: Trans(
                      "Renseigner dans les champs correspondants ce que vous pensez gagnez mensuellement")
                  .tr,
              line: 2,
              textColor: gris,
            ),
            const SizedBox(
              height: 20,
            ),

            ///
            Expanded(
              flex: 2,
              child: PageView(
                controller: _onboardController,
                children: [
                  Analyse1(clickNext: null, numberOne: null),
                  Analyse2(clickNext: null, numberOne: null),
                  Analyse3(clickNext: null, numberOne: null),
                  Analyse4(clickNext: null, numberOne: null),
                ],
                onPageChanged: (page) {
                  debugPrint('$page');
                  setState(() {
                    etape = page;
                  });
                },
              ),
            ),
          ],
        ),
      ),

      ///
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 20, left: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Visibility(
            //   visible: etape == 1 ? false : true,
            // child:
            buttonCustom(
              text: Trans("précédent").tr,
              width: MediaQuery.of(context).size.width / 3,
              color: etape == 0 ? gris : rouge,
              textColor: blanc,
              tap: () {
                if (etape == 0) {
                  return null;
                } else {
                  debugPrint("Position => $etape");
                  debugPrint("controllerPage => ${_onboardController.page}");
                  debugPrint(
                      "_onboardController.position => ${_onboardController.position}");
                  _onboardController.previousPage(
                      duration: const Duration(milliseconds: 250),
                      curve: Curves.ease);
                }
                //Navigator.of(context).pop();
              },
            ),
            // ),
            buttonCustom(
              text: etape == 3 ? Trans("Soummetre").tr : Trans("Suivant").tr,
              width: MediaQuery.of(context).size.width / 2.5,
              color: etape == 3 ? vert : rouge,
              textColor: blanc,
              tap: () {
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (_) => Analyse3()));

                debugPrint("Position => $etape");
                debugPrint("controllerPage => ${_onboardController.page}");
                debugPrint(
                    "_onboardController.position => ${_onboardController.position}");

                _onboardController.animateToPage(etape + 1,
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.easeInCubic);

                if (etape == 3) {
                  //kisskoff comment
                  // apres enregistrement
                  showDialog(
                    context: context,
                    builder: (_) => messageDialog(
                        text: Trans("Analyse effectué").tr,
                        tap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (_) => Home()));
                        }),
                  );

                  /// retour à l accueille
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
