// ignore_for_file: unnecessary_import, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Solde() {
  return Container(
    margin: EdgeInsets.all(3),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.black54,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Solde:'),
        Column(
          children: [
            Row(
              children: [
                Text('O', style: TextStyle(fontSize: 20)),
                Text('CFA', style: TextStyle(fontSize: 10))
              ],
            ),
            Text('8 janv. - 14 janv')
          ],
        )
      ],
    ),
  );
}
