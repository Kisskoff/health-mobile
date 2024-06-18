import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/color.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/texte.dart';

//////
///

// AppBar barApp() {
Widget barApp() {
  return AppBar(
    backgroundColor: blanc,
    elevation: 0,
    toolbarHeight: 10,
    flexibleSpace: Container(
      height: 120,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
        color: primary,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height: 70,
            width: 300,
            decoration: BoxDecoration(
              color: blanc,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                titre1(
                  text: " Health  Money . ".toUpperCase(),
                  size: 27,
                  space: 2,
                  textColor: primary,
                  fond: transparent,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          subtitleBold(
            text: Trans("surveille").tr,
            size: 15,
            space: 1,
            textColor: blanc,
          ),
        ],
      ),
    ),
  );
}
