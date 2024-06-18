import 'package:flutter/material.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/color.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/texte.dart';

Widget setting(
    {VoidCallback? tap,
    Color? color,
    Color? textColor,
    Color? btncolor,
    IconData? icon,
    final text,
    final String? sousTitre}) {
  return GestureDetector(
    child: Container(
      width: double.infinity,
      //height: 100,
      decoration: BoxDecoration(
        color: blanc,
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        title: subtitleBold(
          text: text.toString().toUpperCase(), size: 16, //'Mon compte',
        ),
        subtitle: subtitleBold(
          text: sousTitre, //"Verifiez mes informations",
          size: 14,
          textColor: gris,
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 16,
        ),
      ),
    ),
    onTap: tap,
  );
}
