// // ignore_for_file: non_constant_identifier_names

// import 'package:flutter/material.dart';
// import 'package:intl_phone_field/intl_phone_field.dart';

// class Inscription extends StatefulWidget {
//   const Inscription({super.key});

//   @override
//   State<Inscription> createState() => _InscriptionState();
// }

// class _InscriptionState extends State<Inscription> {
//   String _FonctionTypeValue = "Fonction publique";
//   int _AnneePro = 0;
//   int _jourPaye = 1;
//   final _formKey = GlobalKey<FormState>();
//   String NumberPhone = "";

//   TextEditingController _controllerName = TextEditingController();
//   TextEditingController _controllerMail = TextEditingController();
//   TextEditingController _controllerTel = TextEditingController();
//   TextEditingController _controllerMdp = TextEditingController();
//   TextEditingController _controllerVille = TextEditingController();
//   TextEditingController _controllerMdpConfirm = TextEditingController();
//   bool sameCode = false;

//   int index_button = 0;
//   final List items_button_child = const [
//     Text(
//       "S'inscrire ",
//       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
//     ),
//     CircularProgressIndicator(
//       color: Colors.white,
//     )
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           elevation: 0,
//         ),
//         body: Stack(
//           children: [
//             Form(
//               key: _formKey,
//               child: ListView(
//                 children: [
//                   SizedBox(
//                     height: 130,
//                   ),
//                   //Title connexion.....
//                   Container(
//                     width: double.infinity,
//                     child: const Padding(
//                       padding: EdgeInsets.only(bottom: 10),
//                       child: Center(
//                         child: Text(
//                           "  INSCRIPTION  ",
//                           style: TextStyle(
//                               fontSize: 20, fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                     ),
//                   ),
//                   //Nom et prenom.....
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 15),
//                     child: ListTile(
//                       title: Padding(
//                         padding: const EdgeInsets.symmetric(
//                             vertical: 10.0, horizontal: 20),
//                         child: Text(
//                           "Nom et prenom",
//                           maxLines: 1,
//                           overflow: TextOverflow.ellipsis,
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.grey[800],
//                           ),
//                         ),
//                       ),
//                       subtitle: Row(
//                         mainAxisSize: MainAxisSize.max,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Flexible(
//                             child: TextFormField(
//                               controller: _controllerName,
//                               keyboardType: TextInputType.text,
//                               textInputAction: TextInputAction.next,
//                               maxLength: 50,
//                               textAlign: TextAlign.center,
//                               decoration: InputDecoration(
//                                 counterText: "",
//                                 contentPadding:
//                                     EdgeInsets.symmetric(vertical: 0),
//                                 hintText: "Saisissez votre nom et prenom",
//                                 suffixIcon: const Icon(
//                                   Icons.person,
//                                   color: Colors.grey,
//                                 ),
//                                 filled: true,
//                                 fillColor: Colors.grey[200],
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide.none,
//                                 ),
//                               ),
//                               validator: (value) {
//                                 if (value!.isEmpty) {
//                                   return 'Saisie obligatoire';
//                                 }
//                                 return null;
//                               },
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   //Email.....
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 15),
//                     child: ListTile(
//                       title: Padding(
//                         padding: const EdgeInsets.symmetric(
//                             vertical: 10.0, horizontal: 20),
//                         child: Text(
//                           "Email",
//                           maxLines: 1,
//                           overflow: TextOverflow.ellipsis,
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.grey[800],
//                           ),
//                         ),
//                       ),
//                       subtitle: Row(
//                         mainAxisSize: MainAxisSize.max,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Flexible(
//                             child: TextFormField(
//                               controller: _controllerMail,
//                               keyboardType: TextInputType.emailAddress,
//                               textInputAction: TextInputAction.next,
//                               maxLength: 30,
//                               textAlign: TextAlign.center,
//                               decoration: InputDecoration(
//                                 counterText: "",
//                                 contentPadding:
//                                     EdgeInsets.symmetric(vertical: 0),
//                                 hintText: "Saisissez votre email",
//                                 suffixIcon: Icon(
//                                   Icons.email_outlined,
//                                   color: Colors.grey,
//                                 ),
//                                 filled: true,
//                                 fillColor: Colors.grey[200],
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide.none,
//                                 ),
//                               ),
//                               validator: (value) {
//                                 if (value!.isEmpty) {
//                                   return 'Saisie obligatoire';
//                                 }
//                                 return null;
//                                 //return GENERAL_FUNCTION().validateEmail(value);
//                               },
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   //Telephone.....
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 15),
//                     child: ListTile(
//                       title: Padding(
//                         padding: const EdgeInsets.symmetric(
//                             vertical: 10.0, horizontal: 20),
//                         child: Text(
//                           "Telephone",
//                           maxLines: 1,
//                           overflow: TextOverflow.ellipsis,
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.grey[800],
//                           ),
//                         ),
//                       ),
//                       subtitle: Row(
//                         mainAxisSize: MainAxisSize.max,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Flexible(
//                               child: IntlPhoneField(
//                             controller: _controllerTel,
//                             decoration: InputDecoration(
//                               counterText: "",
//                               contentPadding:
//                                   const EdgeInsets.symmetric(vertical: 0),
//                               hintText: "",
//                               suffixIcon: const Icon(
//                                 Icons.phone_android,
//                                 color: Colors.grey,
//                               ),
//                               filled: true,
//                               fillColor: Colors.grey[200],
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                                 borderSide: BorderSide.none,
//                               ),
//                             ),
//                             initialCountryCode: 'CI',
//                             invalidNumberMessage: "Numero invalide",
//                             onChanged: (number) {
//                               setState(() {
//                                 NumberPhone = number.completeNumber;
//                                 print(NumberPhone);
//                               });
//                             },
//                             validator: (value) {
//                               if (value!.completeNumber.isEmpty) {
//                                 return 'Saisie obligatoire';
//                               }
//                               return null;
//                             },
//                           )),
//                         ],
//                       ),
//                     ),
//                   ),
//                   //Ville.....
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 15),
//                     child: ListTile(
//                       title: Padding(
//                         padding: const EdgeInsets.symmetric(
//                             vertical: 10.0, horizontal: 20),
//                         child: Text(
//                           "Ville",
//                           maxLines: 1,
//                           overflow: TextOverflow.ellipsis,
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.grey[800],
//                           ),
//                         ),
//                       ),
//                       subtitle: Row(
//                         mainAxisSize: MainAxisSize.max,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Flexible(
//                             child: TextFormField(
//                               controller: _controllerVille,
//                               keyboardType: TextInputType.text,
//                               textInputAction: TextInputAction.next,
//                               maxLength: 30,
//                               textAlign: TextAlign.center,
//                               decoration: InputDecoration(
//                                 counterText: "",
//                                 contentPadding:
//                                     EdgeInsets.symmetric(vertical: 0),
//                                 hintText: "Lieu de résidence",
//                                 suffixIcon: Icon(
//                                   Icons.map,
//                                   color: Colors.grey,
//                                 ),
//                                 filled: true,
//                                 fillColor: Colors.grey[200],
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide.none,
//                                 ),
//                               ),
//                               validator: (value) {
//                                 if (value!.isEmpty) {
//                                   return 'Saisie obligatoire';
//                                 }
//                                 return null;
//                               },
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   //Situation financiere......
//                   Padding(
//                     padding: const EdgeInsets.only(left: 16),
//                     child: ListTile(
//                       title: Padding(
//                         padding: const EdgeInsets.symmetric(
//                             vertical: 10.0, horizontal: 20),
//                         child: Text(
//                           "Situation financiere",
//                           maxLines: 1,
//                           overflow: TextOverflow.ellipsis,
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.grey[800],
//                           ),
//                         ),
//                       ),
//                       subtitle: Row(
//                         mainAxisSize: MainAxisSize.max,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Flexible(
//                             child: Container(
//                               decoration: BoxDecoration(
//                                   color: Colors.grey[200],
//                                   borderRadius: BorderRadius.circular(10)),
//                               child: Padding(
//                                 padding: const EdgeInsets.symmetric(
//                                     horizontal: 10.0),
//                                 child: DropdownButton(
//                                   value: _FonctionTypeValue,
//                                   items: const [
//                                     DropdownMenuItem(
//                                       child: Text(
//                                         "Fonction publique",
//                                       ),
//                                       value: "Fonction publique",
//                                     ),
//                                     DropdownMenuItem(
//                                       child: Text(
//                                         "Fonction privée",
//                                       ),
//                                       value: "Fontction privée",
//                                     ),
//                                     DropdownMenuItem(
//                                       child: Text(
//                                         "Etudiant",
//                                       ),
//                                       value: "Etudiant",
//                                     ),
//                                     DropdownMenuItem(
//                                       child: Text(
//                                         "Sans-emploi",
//                                       ),
//                                       value: "Sans-emploi",
//                                     ),
//                                     DropdownMenuItem(
//                                       child: Text(
//                                         "Transporteur",
//                                       ),
//                                       value: "Transporteur",
//                                     ),
//                                     DropdownMenuItem(
//                                       child: Text(
//                                         "Retraité",
//                                       ),
//                                       value: "Retraité",
//                                     ),
//                                     DropdownMenuItem(
//                                       child: Text(
//                                         "Commercant",
//                                       ),
//                                       value: "Commercant",
//                                     ),
//                                     DropdownMenuItem(
//                                       child: Text(
//                                         "Sportif",
//                                       ),
//                                       value: "Sportif",
//                                     ),
//                                     DropdownMenuItem(
//                                       child: Text(
//                                         "Religieux",
//                                       ),
//                                       value: "Religieux",
//                                     ),
//                                     DropdownMenuItem(
//                                       child: Text(
//                                         "Artiste",
//                                       ),
//                                       value: "Artiste",
//                                     ),
//                                     DropdownMenuItem(
//                                       child: Text(
//                                         "Agriculteur",
//                                       ),
//                                       value: "Agriculteur",
//                                     ),
//                                     DropdownMenuItem(
//                                       child: Text(
//                                         "Liberal",
//                                       ),
//                                       value: "Liberal",
//                                     ),
//                                     DropdownMenuItem(
//                                       child: Text(
//                                         "Consultant",
//                                       ),
//                                       value: "Consultant",
//                                     ),
//                                     DropdownMenuItem(
//                                       child: Text(
//                                         "Dirigeant non salarié",
//                                       ),
//                                       value: "Dirigeant non salarié",
//                                     ),
//                                     DropdownMenuItem(
//                                       child: Text(
//                                         "Exploitant minier",
//                                       ),
//                                       value: "Exploitant minier",
//                                     ),
//                                     DropdownMenuItem(
//                                       child: Text(
//                                         "Artisans de la diaspora",
//                                       ),
//                                       value: "Artisans de la diaspora",
//                                     ),
//                                   ],
//                                   onChanged: (String? currentValue) {
//                                     setState(() {
//                                       _FonctionTypeValue = currentValue!;
//                                     });
//                                   },
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),

//                   Row(
//                     children: [
//                       //Jour de paye.....
//                       Visibility(
//                         visible: !(_FonctionTypeValue == "Etudiant" ||
//                                 _FonctionTypeValue == "Sans-emploi" ||
//                                 _FonctionTypeValue == "Dirigeant non salarié")
//                             ? true
//                             : false,
//                         child: Flexible(
//                           child: ListTile(
//                             title: Padding(
//                               padding: const EdgeInsets.symmetric(
//                                   vertical: 10.0, horizontal: 30),
//                               child: Text(
//                                 "Jour de paye",
//                                 maxLines: 1,
//                                 overflow: TextOverflow.ellipsis,
//                                 style: TextStyle(
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.grey[800],
//                                 ),
//                               ),
//                             ),
//                             subtitle: Padding(
//                               padding: const EdgeInsets.symmetric(
//                                   vertical: 10.0, horizontal: 20),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Container(
//                                     decoration: BoxDecoration(
//                                         color: Colors.grey[200],
//                                         borderRadius:
//                                             BorderRadius.circular(10)),
//                                     child: Padding(
//                                       padding: const EdgeInsets.symmetric(
//                                           horizontal: 10.0),
//                                       child: DropdownButton(
//                                         value: _jourPaye,
//                                         items: [
//                                           for (int jour in List.generate(
//                                               30, (index) => index + 1))
//                                             DropdownMenuItem<int>(
//                                               child: Text(
//                                                 "$jour",
//                                               ),
//                                               value: jour,
//                                             ),
//                                         ],
//                                         onChanged: (int? currentValue) {
//                                           setState(() {
//                                             _jourPaye = currentValue!;
//                                           });
//                                         },
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       //Année Pro.....
//                       Visibility(
//                         visible: !(_FonctionTypeValue == "Etudiant" ||
//                                 _FonctionTypeValue == "Sans-emploi" ||
//                                 _FonctionTypeValue == "Dirigeant non salarié")
//                             ? true
//                             : false,
//                         child: Flexible(
//                           child: ListTile(
//                             title: Padding(
//                               padding: const EdgeInsets.symmetric(
//                                   vertical: 10.0, horizontal: 30),
//                               child: Text(
//                                 "Année expérience",
//                                 maxLines: 1,
//                                 overflow: TextOverflow.ellipsis,
//                                 style: TextStyle(
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.grey[800],
//                                 ),
//                               ),
//                             ),
//                             subtitle: Padding(
//                               padding: const EdgeInsets.symmetric(
//                                   vertical: 10.0, horizontal: 20),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Container(
//                                     decoration: BoxDecoration(
//                                         color: Colors.grey[200],
//                                         borderRadius:
//                                             BorderRadius.circular(10)),
//                                     child: Padding(
//                                       padding: const EdgeInsets.symmetric(
//                                           horizontal: 10.0),
//                                       child: DropdownButton(
//                                         value: _AnneePro,
//                                         items: [
//                                           for (int an in List.generate(
//                                               50, (index) => index))
//                                             DropdownMenuItem<int>(
//                                               child: Text(
//                                                 "$an",
//                                               ),
//                                               value: an,
//                                             ),
//                                         ],
//                                         onChanged: (int? currentValue) {
//                                           setState(() {
//                                             _AnneePro = currentValue!;
//                                           });
//                                         },
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 15,
//                   ),
//                   //Mot de passe.....
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 15),
//                     child: ListTile(
//                       title: Padding(
//                         padding: const EdgeInsets.symmetric(
//                             vertical: 10.0, horizontal: 20),
//                         child: Text(
//                           "Mot de passe",
//                           maxLines: 1,
//                           overflow: TextOverflow.ellipsis,
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.grey[800],
//                           ),
//                         ),
//                       ),
//                       subtitle: Row(
//                         mainAxisSize: MainAxisSize.max,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Flexible(
//                             child: TextFormField(
//                               controller: _controllerMdp,
//                               keyboardType: TextInputType.number,
//                               obscureText: true,
//                               style: TextStyle(fontSize: 17),
//                               textInputAction: TextInputAction.done,
//                               maxLength: 5,
//                               textAlign: TextAlign.center,
//                               decoration: InputDecoration(
//                                 contentPadding:
//                                     EdgeInsets.symmetric(vertical: 0),
//                                 hintText: "Saisissez votre mot de passe",
//                                 hintStyle: TextStyle(fontSize: 15),
//                                 suffixIcon:
//                                     Icon(Icons.lock, color: Colors.grey),
//                                 filled: true,
//                                 fillColor: Colors.grey[200],
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide.none,
//                                 ),
//                               ),
//                               onChanged: (text) {
//                                 if (text != _controllerMdpConfirm.text) {
//                                   setState(() {
//                                     sameCode = false;
//                                   });
//                                 } else {
//                                   setState(() {
//                                     sameCode = true;
//                                   });
//                                 }
//                               },
//                               validator: (value) {
//                                 if (value!.isEmpty) {
//                                   return 'Saisie obligatoire';
//                                 } else if (value.length < 5) {
//                                   return "5 caractères pour le mot de passe";
//                                 }
//                                 return null;
//                               },
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   //Mot de passe.....
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 15),
//                     child: ListTile(
//                       title: Padding(
//                         padding: const EdgeInsets.symmetric(vertical: 13.0),
//                         child: Row(
//                           mainAxisSize: MainAxisSize.max,
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Flexible(
//                               child: TextFormField(
//                                 controller: _controllerMdpConfirm,
//                                 keyboardType: TextInputType.number,
//                                 obscureText: true,
//                                 style: TextStyle(fontSize: 17),
//                                 textInputAction: TextInputAction.done,
//                                 maxLength: 5,
//                                 textAlign: TextAlign.center,
//                                 decoration: InputDecoration(
//                                   counterText: "",
//                                   contentPadding:
//                                       EdgeInsets.symmetric(vertical: 0),
//                                   hintText: "Confirmer votre mot de passe",
//                                   hintStyle: TextStyle(fontSize: 15),
//                                   suffixIcon: Icon(
//                                       sameCode ? Icons.done : Icons.close,
//                                       color:
//                                           sameCode ? Colors.green : Colors.red),
//                                   filled: true,
//                                   fillColor: Colors.grey[200],
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(10),
//                                     borderSide: BorderSide.none,
//                                   ),
//                                 ),
//                                 onChanged: (text) {
//                                   if (text != _controllerMdp.text) {
//                                     setState(() {
//                                       sameCode = false;
//                                     });
//                                   } else {
//                                     setState(() {
//                                       sameCode = true;
//                                     });
//                                   }
//                                 },
//                                 validator: (text) {
//                                   if (text!.isEmpty) {
//                                     return 'Saisie obligatoire';
//                                   } else if (text != _controllerMdp.text) {
//                                     return "Les mots de passe sont différents";
//                                   }
//                                   return null;
//                                 },
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),

//                   const SizedBox(
//                     height: 15,
//                   ),

//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 30.0),
//                     child: ElevatedButton(
//                       onPressed: () async =>
//                           Navigator.of(context).popAndPushNamed('/Connexion'),
//                       child: Text('inscription'),
//                     ),
//                   ),
//                   // S'inscrire.....

//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Text("Deja un compte ? "),
//                       TextButton(
//                           onPressed: () => Navigator.of(context)
//                               .popAndPushNamed('/Connexion'),
//                           child: const Text("Se connecter",
//                               style: TextStyle(fontSize: 16)))
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                 ],
//               ),
//             ),

//             // En-tetes....
//             Container(
//               height: 100,
//               width: double.infinity,
//               decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(30),
//                     bottomRight: Radius.circular(30)),
//                 color: Colors.white,
//                 boxShadow: [
//                   BoxShadow(
//                     color: Color(0xffDDDDDD),
//                     blurRadius: 6.0,
//                     spreadRadius: 3.0,
//                     offset: Offset(0.0, 0.0),
//                   )
//                 ],
//               ),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   ListTile(
//                     title: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         ClipRRect(
//                           borderRadius: BorderRadius.circular(10),
//                           child: const Text(
//                             " Health  Money . ",
//                             style: TextStyle(
//                               backgroundColor:
//                                   Color.fromARGB(193, 62, 118, 182),
//                               letterSpacing: 1,
//                               fontSize: 25,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     subtitle: const Text(
//                       " Surveille ton argent avec simplicité",
//                       style: TextStyle(
//                         letterSpacing: 1,
//                         fontSize: 14,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ));
//   }
// }

/////////////////

import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:wallet_cryptocurrency/Health/Auth/connexion.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/button.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/color.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/saisie.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/texte.dart';
import 'package:wallet_cryptocurrency/Health/ui/aces/home.dart';

import '../MyComponents/MyAppBar.dart';

class Inscription extends StatefulWidget {
  const Inscription({Key? key}) : super(key: key);

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  String _fonctionTypeValue = Trans('Fonction publique').tr;
  int _anneePro = 0;
  int _jourPaye = 1;
  final _formKey = GlobalKey<FormState>();
  String numberPhone = "";

  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerMail = TextEditingController();
  final TextEditingController _controllerTel = TextEditingController();
  final TextEditingController _controllerMdp = TextEditingController();
  final TextEditingController _controllerVille = TextEditingController();
  final TextEditingController _controllerMdpConfirm = TextEditingController();

  bool _isVisible = false;
  bool _isVisibleConfirm = false;
  bool sameCode = false;

  int indexButton = 0;
  // final List _itemsButtonChild = [
  //   subtitleBold(
  //     text: "S'inscrire",
  //     size: 17,
  //   ),
  //   CircularProgressIndicator(
  //     color: blanc,
  //   )
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blanc,

      appBar: AppBar(
        backgroundColor: primary,
        toolbarHeight: 30,
        elevation: 0,
      ),
      //appBar: barApp(),
      body: Stack(
        children: [
          Form(
            key: _formKey,
            child: ListView(
              children: [
                barApp(),
                const SizedBox(
                  height: 10,
                ),
                //Title connexion.....
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Center(
                      child: subtitleBold(
                        text: Trans('INSCRIPTION').tr,
                        size: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                //Nom et prenom.....
                //debut
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Column(
                    children: [
                      saisie(
                        title: Trans('Nom').tr,
                        hint: Trans('Nom').tr,
                        controller: _controllerName,
                        keybord: TextInputType.text,
                        iconPrefix: Icons.person,
                        length: 50,
                        action: TextInputAction.next,
                        val: (value) {
                          if (value!.isEmpty) {
                            return Trans('Le nom est obligatoire').tr;
                          }
                          return null;
                        },
                      ),

                      const SizedBox(
                        height: 15,
                      ),

                      //Email.....
                      saisie(
                        title: "Email",
                        hint: Trans("Saisissez votre email").tr,
                        controller: _controllerMail,
                        keybord: TextInputType.emailAddress,
                        action: TextInputAction.next,
                        iconPrefix: Icons.email_outlined,
                        length: 30,
                        val: (value) {
                          if (value!.isEmpty) {
                            return Trans("Veuillez saisir votre email").tr;
                          }
                          return null;
                          //return GENERAL_FUNCTION().validateEmail(value);
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      //telephone
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            subtitleBold(
                              text: Trans('Téléphone').tr,
                              size: 14,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            IntlPhoneField(
                              controller: _controllerTel,
                              decoration: InputDecoration(
                                counterText: "",
                                contentPadding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                hintText: "0000000000",
                                suffixIcon: Icon(
                                  Icons.phone_android,
                                  color: gris,
                                ),
                                filled: true,
                                fillColor: gris2,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                              pickerDialogStyle: PickerDialogStyle(
                                listTileDivider: const SizedBox(
                                  height: 1,
                                ),
                                backgroundColor: blanc,
                                searchFieldInputDecoration: InputDecoration(
                                  fillColor: rouge,
                                  helperText: Trans("Recherche un pays").tr,
                                  hoverColor: vert,
                                ),
                              ),
                              initialCountryCode: 'CI',
                              invalidNumberMessage: Trans("Numéro invalide").tr,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp("[0-9]"))
                              ],
                              onChanged: (number) {
                                setState(() {
                                  numberPhone = number.completeNumber;
                                  debugPrint(numberPhone);
                                });
                              },
                              validator: (value) {
                                if (value!.completeNumber.isEmpty) {
                                  return Trans('Saisie obligatoire').tr;
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 15,
                      ),
                      // //Ville.....
                      saisie(
                        title: Trans("Ville").tr,
                        hint: Trans("Lieu de résidence").tr,
                        controller: _controllerVille,
                        iconPrefix: Icons.pin_drop,
                        val: (value) {
                          if (value!.isEmpty) {
                            return Trans('Saisie obligatoire').tr;
                          }
                          return null;
                        },
                      ),

                      const SizedBox(
                        height: 15,
                      ),
                      // //Situation financiere......
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            subtitleBold(
                              text: Trans('Situation financiere').tr,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            // situation(
                            //   fonction: _fonctionTypeValue,
                            //   onChange: (currentValue) {
                            //     setState(() {
                            //       _fonctionTypeValue = currentValue!;
                            //     });
                            //     return null;
                            //   },
                            // ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //Jour de paye.....
                            Visibility(
                              visible: !(_fonctionTypeValue ==
                                          Trans('Etudiant').tr ||
                                      _fonctionTypeValue ==
                                          Trans('Sans-emploi').tr ||
                                      _fonctionTypeValue ==
                                          Trans('Dirigeant non salarié').tr)
                                  ? true
                                  : false,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width / 2.5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    subtitleBold(
                                      text: Trans('Jour de paye').tr,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      height: 45,
                                      child: Container(
                                        padding: const EdgeInsets.all(10),
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2,
                                        decoration: BoxDecoration(
                                          color: gris2,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: DropdownButton(
                                          padding: const EdgeInsets.only(
                                              left: 10, right: 20),
                                          isExpanded: true,
                                          underline: const SizedBox(
                                            height: 2,
                                          ),
                                          value: _jourPaye,
                                          items: [
                                            for (int jour in List.generate(
                                                30, (index) => index + 1))
                                              DropdownMenuItem<int>(
                                                child: Text(
                                                  "$jour",
                                                ),
                                                value: jour,
                                              ),
                                          ],
                                          onChanged: (int? currentValue) {
                                            setState(() {
                                              _jourPaye = currentValue!;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            // annee experience
                            //Année Pro.....
                            Visibility(
                              visible: !(_fonctionTypeValue ==
                                          Trans('Etudiant').tr ||
                                      _fonctionTypeValue ==
                                          Trans('Sans-emploi').tr ||
                                      _fonctionTypeValue ==
                                          Trans('Dirigeant non salarié').tr)
                                  ? true
                                  : false,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width / 2.5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    subtitleBold(
                                      text: Trans('Année expérience').tr,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      height: 45,
                                      child: Container(
                                        padding: const EdgeInsets.all(10),
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2,

                                        decoration: BoxDecoration(
                                          color: gris2,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),

                                        child: DropdownButton(
                                          padding: const EdgeInsets.only(
                                              left: 10, right: 20),
                                          isExpanded: true,
                                          underline: const SizedBox(
                                            height: 2,
                                          ),
                                          value: _anneePro,
                                          items: [
                                            for (int an in List.generate(
                                                50, (index) => index))
                                              DropdownMenuItem<int>(
                                                child: Text(
                                                  "$an",
                                                ),
                                                value: an,
                                              ),
                                          ],
                                          onChanged: (int? currentValue) {
                                            setState(() {
                                              _anneePro = currentValue!;
                                            });
                                          },
                                        ),
                                        //
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 15,
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          subtitleBold(text: Trans('Mot de passe').tr),
                          const SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            controller: _controllerMdp,
                            keyboardType: TextInputType.number,
                            obscureText: !_isVisible,
                            style: const TextStyle(fontSize: 17),
                            textInputAction: TextInputAction.next,
                            maxLength: 5,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 0),
                              hintText: Trans('Mot de passe').tr,
                              hintStyle: const TextStyle(fontSize: 15),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(
                                    () {
                                      _isVisible = !_isVisible;
                                    },
                                  );
                                },
                                child: Icon(
                                  _isVisible
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  size: 16,
                                  color: gris,
                                ),
                              ),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: gris,
                                size: 24,
                              ),
                              filled: true,
                              fillColor: Colors.grey[200],
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(RegExp("[0-9]"))
                            ],
                            onChanged: (text) {
                              if (text != _controllerMdpConfirm.text) {
                                setState(() {
                                  sameCode = false;
                                });
                              } else {
                                setState(() {
                                  sameCode = true;
                                });
                              }
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return Trans('Saisie obligatoire').tr;
                              } else if (value.length < 5) {
                                return Trans(
                                        "5 caractères pour le mot de passe")
                                    .tr;
                              }
                              return null;
                            },
                          ),

                          // // //Mot de passe de confirmation.....
                          subtitleBold(
                              text: Trans('Confirmation Mot de passe').tr),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: _controllerMdpConfirm,
                            keyboardType: TextInputType.number,
                            obscureText: _isVisibleConfirm,
                            style: const TextStyle(fontSize: 17),
                            textInputAction: TextInputAction.done,
                            maxLength: 5,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              counterText: "",
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 0),
                              hintText:
                                  Trans("Confirmer votre mot de passe").tr,
                              hintStyle: const TextStyle(fontSize: 15),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(
                                    () {
                                      _isVisibleConfirm = !_isVisibleConfirm;
                                    },
                                  );
                                },
                                child: Icon(
                                  _isVisibleConfirm
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: _isVisible ? gris : primary,
                                  size: 16,
                                ),
                              ),
                              prefixIcon: Icon(
                                sameCode ? Icons.done : Icons.close,
                                color: gris,
                              ),
                              filled: true,
                              fillColor: gris2,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(RegExp("[0-9]"))
                            ],
                            onChanged: (text) {
                              if (text != _controllerMdp.text) {
                                setState(() {
                                  sameCode = false;
                                });
                              } else {
                                setState(() {
                                  sameCode = true;
                                });
                              }
                            },
                            validator: (text) {
                              if (text!.isEmpty) {
                                return Trans('Saisie obligatoire').tr;
                              } else if (text != _controllerMdp.text) {
                                return Trans(
                                        'Les mots de passe sont différents')
                                    .tr;
                              }
                              return null;
                            },
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 15,
                      ),

                      // boutton eleveted
                      buttonCustom(
                        text: Trans("S'inscrire").tr,

                        //_itemsButtonChild[_indexButton],
                        color: primary,
                        textColor: blanc,

                        //width: 250,
                        tap: () {
                          // tap: () async {
                          //   if (_formKey.currentState!.validate()) {
                          //     setState(() {
                          //       indexButton = 1;
                          //     });

                          // int? response = await FirestoreApi.request.inscription(
                          //     _controllerName.text,
                          //     numberPhone,
                          //     _controllerVille.text,
                          //     _controllerMail.text,
                          //     _controllerMdp.text,
                          //     _fonctionTypeValue,
                          //     _jourPaye,
                          //     _anneePro);

                          // switch (response) {
                          //   case 1:
                          //     setState(() {
                          //       _indexButton = 0;
                          //     });

                          // showMyDialog(
                          //     const ListTile(
                          //       title: Text("Inscription reussie",
                          //           textAlign: TextAlign.center,
                          //           style: TextStyle(
                          //               fontWeight: FontWeight.bold)),
                          //       subtitle: Text(
                          //           "Vous disposez de 30 jours pour profiter de nos services, passé ce delai il vous faudra activer votre compte pour continuer d'en bénéficier",
                          //           textAlign: TextAlign.center,
                          //           style: TextStyle(
                          //               fontWeight: FontWeight.bold)),
                          //     ),
                          //     Lottie.asset("assets/lottie/97240-success.json",
                          //         height: 100),
                          //     context);

                          Future.delayed(
                            const Duration(seconds: 7),
                            () => Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (_) => Home())),
                          );
                        },
                      ),
                      // S'inscrire.....

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(Trans("Deja un compte ?").tr),
                          TextButton(
                            child: Text(
                              Trans("Se connecter").tr,
                              style: TextStyle(fontSize: 16),
                            ),
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (_) => Connexion()));
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // En-tetes....
          // barApp(),
        ],
      ),
    );
  }
}
