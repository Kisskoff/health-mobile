// import 'package:flutter/cupertino.dart';
// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/button.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/color.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/saisie.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/texte.dart';

class AddMount extends StatefulWidget {
  VoidCallback? valider;
  final String? title;
  final String? operation;

  AddMount({super.key, this.title, this.operation, this.valider});

  @override
  State<AddMount> createState() => _AddMountState();
}

class _AddMountState extends State<AddMount> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: blanc,
      shadowColor: transparent,
      contentPadding: const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      content: Container(
        padding: EdgeInsets.all(20),
        width: 300,
        height: 320,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: blanc,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Column(
          children: [
            subtitleBold(
              text: Trans("Combien avez-vous dépensez").tr.toUpperCase(),
              size: 20,
              align: TextAlign.center,
              line: 2,
            ),
            // const SizedBox(height: 5),
            // montant
            saisie(
              title: '',
              hint: Trans("Montant").tr,
              keybord: TextInputType.number,
              iconPrefix: Icons.monetization_on,
            ),

            saisie(
              title: '',
              hint: Trans("Precisez votre depense").tr,
              keybord: TextInputType.number,
              iconPrefix: Icons.money_sharp,
            ),
            const SizedBox(height: 15),
            buttonCustom(
              text: Trans("Valider").tr,
              width: 180,
              color: primary,
              textColor: blanc,
              tap: () {
                debugPrint(widget.operation);

                switch (widget.operation) {
                  case 'Transport':

                    // trois second apres on affiche l ecran d accueil
                    // Future.delayed(
                    //     const Duration(seconds: 2),
                    //     () => Navigator.of(context)
                    //         .popAndPushNamed('/main'));
                    break;

                  case 'Alimentation':
                    break;

                  case 'Assurance':
                    break;

                  case 'Facture':
                    break;
                  case 'Sante':
                    break;
                  case 'Cotisation':
                    break;
                  case 'Autre':
                    break;
                  case 'Abonnement':
                    break;
                  case 'Achat':
                    break;
                  case 'Mobile':
                    break;
                  case 'Transport revenu':
                    break;
                  case 'Alimentation revenu':
                    break;
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

//

// Widget addMount({
//   VoidCallback? valider,
//   final String? title,
//   final String? operation,
// }) {
//   return AlertDialog(
//     backgroundColor: blanc,
//     shadowColor: transparent,
//     contentPadding: const EdgeInsets.all(0),
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(12),
//     ),
//     content: Container(
//       padding: EdgeInsets.all(20),
//       width: 300,
//       height: 320,
//       clipBehavior: Clip.antiAlias,
//       decoration: ShapeDecoration(
//         color: blanc,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(15),
//         ),
//       ),
//       child: Column(
//         children: [
//           subtitleBold(
//             text: 'Combien avez-vous dépensez'.toUpperCase(),
//             size: 18,
//             align: TextAlign.center,
//             line: 2,
//           ),
//           const SizedBox(height: 5),
//           // montant
//           saisie(
//             title: '',
//             hint: 'Montant',
//             keybord: TextInputType.number,
//             iconPrefix: Icons.monetization_on,
//           ),

//           saisie(
//             title: '',
//             hint: 'Precisez votre depense',
//             keybord: TextInputType.number,
//             iconPrefix: Icons.money_sharp,
//           ),
//           const SizedBox(height: 20),
//           buttonCustom(
//             text: 'Valider',
//             width: 180,
//             color: primary,
//             textColor: blanc,
//             tap: () {
//               debugPrint(operation);

//               switch (operation) {
//                 case 'Transport':

//                   // trois second apres on affiche l ecran d accueil
//                   // Future.delayed(
//                   //     const Duration(seconds: 2),
//                   //     () => Navigator.of(context)
//                   //         .popAndPushNamed('/main'));
//                   break;

//                 case 'Alimentation':
//                   break;

//                 case 'Assurance':
//                   break;

//                 case 'Facture':
//                   break;
//                 case 'Sante':
//                   break;
//                 case 'Cotisation':
//                   break;
//                 case 'Autre':
//                   break;
//                 case 'Abonnement':
//                   break;
//                 case 'Achat':
//                   break;
//                 case 'Mobile':
//                   break;
//               }
//             },
//           ),
//         ],
//       ),
//     ),
//   );
// }
