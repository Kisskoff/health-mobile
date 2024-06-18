import 'package:flutter/material.dart';

Widget buttonCustom({
  VoidCallback? tap,
  Color? color,
  Color? textColor,
  final text,
  double? width,
  final align,
}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(25),
    child: SizedBox(
      width: width ?? 220,
      height: 50,
      child: MaterialButton(
        onPressed: tap,
        elevation: 5.0,
        color: color,
        child: Text(
          text.toString().toUpperCase(),
          textAlign: align ?? TextAlign.center,
          style: TextStyle(
            color: textColor,
            fontSize: 15,
            letterSpacing: 0.5,
            //fontFamily: 'Camaro',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
