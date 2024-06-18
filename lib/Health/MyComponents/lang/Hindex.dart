// ignore_for_file: unnecessary_import, unused_element

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/button.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/color.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/texte.dart';

import '../../../localization_service.dart';
import '../../../splachScreen.dart';

class HLangue extends StatefulWidget {
  final String? operation;
  const HLangue({super.key, this.operation});

  @override
  State<HLangue> createState() => _HLangueState();
}

class _HLangueState extends State<HLangue> {
  //with WidgetsBindingObserver {
  // kisskoff add 'with WidgetsBindingObserver'//// kisskoff getLangue 3
  // String lng = 'English';

  // kisskoff getLangue 4
  //Locale? _locale;
  //

  bool actifLocal = true;
  bool inactifLocal = false;

  String recupLang = 'English';

  @override
  void initState() {
// kisskoff getLangue 5
    //   WidgetsBinding.instance.addObserver(this);

    // recuperer la var lange stocker en local

    super.initState();

    // kisskoff getLangue 6
// recuperer la langue du telephone 'getPhoneLanguage(context)'
    //   WidgetsBinding.instance
    //       .addPostFrameCallback((_) => getPhoneLanguage(context));
  }

  // kisskoff getLangue 7
  // @override
  // void dispose() {
  //   WidgetsBinding.instance.removeObserver(this);
  //   super.dispose();
  // }

  void chooseFr() {
    setState(() {
      actifLocal = !actifLocal;
      inactifLocal = !inactifLocal;

      recupLang = LocalizationService
          .langs[1]; // recupere la deuxieme langue ici qui est frabcais
      // changer la langue(mettre en francais)
      LocalizationService().changeLocale(recupLang);
      // print(recupLang);
    });
  }

  void chooseEn() {
    setState(() {
      inactifLocal = !inactifLocal;
      actifLocal = !actifLocal;

      recupLang = LocalizationService
          .langs[0]; // recupere la premierelangue ci qui est anglais
      // recupere la deuxieme langue ici qui est frabcais
      // changer la langue(mettre en anglais)
      LocalizationService().changeLocale(recupLang);
      // print(recupLang);
    });
  }

// // kisskoff getLangue 8

  // @override
  // void didChangeLocales(List<Locale>? locales) {
  //   super.didChangeLocales(locales);

  //   setState(() {
  //     _locale = locales?.first ?? _locale;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blanc,
      appBar: AppBar(
        //title: Center(child: Text(Trans('LANGUE').tr)),
        backgroundColor: blanc,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  titre1(
                    text: Trans("Bienvenue").tr,
                    size: 30,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  subtitleBold(
                    text: Trans("Choisissez votre langue").tr,
                    size: 17,
                  ),
                  // Text(
                  //     'Locale: ${_locale?.languageCode}-${_locale?.countryCode}-$recupLang'),
                ],
              ),
              Column(
                children: [
                  // Row(
                  //   mainAxisSize: MainAxisSize.min,
                  //   children: [
                  //     SizedBox(
                  //       width: 20,
                  //     ),
                  //     Text(""),
                  //     SizedBox(
                  //       width: 10,
                  //     ),
                  //     new DropdownButton<String>(
                  //       items: LocalizationService.langs.map(
                  //         (String value) {
                  //           return new DropdownMenuItem<String>(
                  //             value: value,
                  //             child: new Text(value),
                  //           );
                  //         },
                  //       ).toList(),
                  //       value: this.lng,
                  //       underline: Container(color: Colors.transparent),
                  //       isExpanded: false,
                  //       onChanged: (newVal) {
                  //         setState(() {
                  //           this.lng = newVal!;
                  //           LocalizationService().changeLocale(newVal);

                  //           // print(newVal);
                  //         });
                  //       },
                  //     ),
                  //     TextButton(
                  //       onPressed: () {
                  //         Navigator.push(
                  //             context,
                  //             MaterialPageRoute(
                  //                 builder: (context) => SplashScreen()));
                  //       },
                  //       child: subtitleBold(
                  //         text: Trans("Continuer").tr,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  //langues
                  changeLang(
                    lang: "English",
                    icon: 'assets/en2.png',
                    actif: actifLocal,
                    //inactif: actifLocal,
                    tap: () {
                      chooseEn();
                      // setState(() {
                      //   inactifLocal = !inactifLocal;
                      //   actifLocal = !actifLocal;

                      //   recupLang = LocalizationService.langs[
                      //       0]; // recupere la premierelangue ci qui est anglais
                      //   // recupere la deuxieme langue ici qui est frabcais
                      //   // changer la langue(mettre en anglais)
                      //   LocalizationService().changeLocale(recupLang!);
                      //   // print(recupLang);
                      // });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  changeLang(
                    lang: "Français",
                    icon: 'assets/fr2.png',
                    actif: inactifLocal,
                    //inactif: inactifLocal,
                    tap: () {
                      chooseFr();
                    },

                    // setState(() {
                    //   actifLocal = !actifLocal;
                    //   inactifLocal = !inactifLocal;

                    //   recupLang = LocalizationService.langs[
                    //       1]; // recupere la deuxieme langue ici qui est frabcais
                    //   // changer la langue(mettre en francais)
                    //   LocalizationService().changeLocale(recupLang!);
                    //   // print(recupLang);
                    // });
                  ),
                ],
              ),
              buttonCustom(
                text: Trans("Continuer").tr,
                color: primary,
                textColor: blanc,
                tap: () {
                  // on initialise
                  // la variable langue stocker en local

// case
// si nous sommes a l ouverture alors
// on ouvre splashcreen ou on ferme

                  debugPrint(widget.operation);

                  switch (widget.operation) {
                    case 'setting':
                      Navigator.of(context).pop();
                      break;
                    case "ouvre":
                      // pousser et remplacer la route
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SplashScreen()));
                      break;
                    default:
                      break;
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

// langue component kisskoff
  Widget changeLang({
    VoidCallback? tap,
    final String? icon,
    required final bool actif,
    final String? lang,
  }) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        width: MediaQuery.of(context).size.width * 0.6,
        height: 50,
        decoration: BoxDecoration(
          color: actif ? vert : blanc,
          border: Border.all(
            width: 2,
            color: actif ? vert : primary,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              icon!,
              width: 35,
            ),
            subtitleBold(
              text: lang,
              textColor: actif ? blanc : null,
            ),
            Icon(
              actif ? Icons.check_circle : Icons.radio_button_unchecked,
              color: actif ? blanc : primary,
              size: 30,
            ),
          ],
        ),
      ),
      onTap: tap,
    );
  }
}

// get language void

// void getPhoneLanguage(BuildContext ctx) {
//   final Locale locale = Localizations.localeOf(context);

//   setState(() {
//     _locale = locale;
//     print(locale.languageCode);
//     print(LocalizationService.langs);
//     //
//     if (locale.languageCode == 'fr') {
//       // print(recupLang);

//       // recupLang = LocalizationService.langs[1];

//       // // initialiser la langue par defaut
//       // LocalizationService().changeLocale(recupLang!);

//       // // apres initialisation , on initialise les deux booleen loccal
//       // actifLocal = !actifLocal;
//       // inactifLocal = !inactifLocal;

//       chooseFr(context);
//     } else {
//     // recupLang = LocalizationService.langs[0];

//     // inactifLocal = !inactifLocal;
//     // actifLocal = !actifLocal;

//     // // initialiser la langue par defaut
//     // LocalizationService().changeLocale(recupLang!);
//     // print(recupLang);

//     chooseEn();
//   }
// });
// }
// }
