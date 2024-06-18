// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class GENERAL_FUNCTION {
  dynamic scaffoldMessage(BuildContext context, bool error, String message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        backgroundColor: error ? Colors.red : Colors.green,
      ),
    );
  }
}

Future<String?> showMyDialog(
    Widget _titleD, Widget _widgetD, BuildContext context) async {
  return showDialog<String>(
    context: context,
    builder: (BuildContext context) => Container(
      height: 150,
      child: AlertDialog(
        elevation: 5,
        title: Center(child: _titleD),
        contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        content: _widgetD,
      ),
    ),
  );
}