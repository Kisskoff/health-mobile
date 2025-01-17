import 'package:flutter/material.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/color.dart';

Widget appBar(
    {required Widget left, required String title, required Widget right}) {
  return Container(
    color: blanc,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          left,
          Text(
            '$title',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          right
        ],
      ),
    ),
  );
}
