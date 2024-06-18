// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Footer() {
  return SafeArea(
    child: Container(
      padding: EdgeInsets.all(2),
      margin: EdgeInsets.symmetric(horizontal: 24),
      height: 40,
      decoration: BoxDecoration(
          color: CupertinoColors.darkBackgroundGray,
          borderRadius: BorderRadius.all(Radius.circular(24))),
      child: Row(
        children: [
          SizedBox(
            width: 16,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              )),
          SizedBox(
            width: 30,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.work_history,
                color: Colors.white,
              )),
          SizedBox(
            width: 30,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.wallet,
                color: Colors.white,
              )),
          SizedBox(
            width: 30,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.file_copy,
                color: Colors.white,
              )),
        ],
      ),
    ),
  );
}
