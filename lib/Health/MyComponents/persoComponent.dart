import 'package:flutter/material.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/color.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/texte.dart';

Widget perso({Color? textColor, final text, final String? titre}) {
  return Container(
    width: double.infinity,
    height: 50,
    decoration: BoxDecoration(
      color: blanc,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: subtitleBold(
              text: titre.toString().toUpperCase(),
            ),
          ),
          Expanded(
            child: subtitleBold(
              text: text,
              textColor: primary,
            ),
          ),
        ],
      ),
    ),
  );
}
