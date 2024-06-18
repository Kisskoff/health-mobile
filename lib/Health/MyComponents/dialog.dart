import 'package:flutter/material.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/color.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/texte.dart';

Widget messageDialog({
  VoidCallback? tap,
  final text,
}) {
  return AlertDialog(
    backgroundColor: blanc,
    shadowColor: transparent,
    contentPadding: const EdgeInsets.all(0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    content: Container(
      width: 200,
      height: 200,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: blanc,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 90,
            height: 90,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              //color: primary,
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                  image: NetworkImage(
                      'https://static-00.iconduck.com/assets.00/success-icon-512x512-qdg1isa0.png')),
              // image: const DecorationImage(
              //   image: AssetImage('assets/success.png'),
              // ),
            ),
          ),
          const SizedBox(height: 20),
          subtitleBold(
            text: text,
            size: 16,
            align: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}
