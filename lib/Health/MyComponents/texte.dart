import 'package:flutter/material.dart';

// grand titre

Widget titre1({
  double? size,
  Color? textColor,
  Color? fond,
  final text,
  double? space,
}) {
  return Text(
    text,
    style: TextStyle(
      color: textColor,
      backgroundColor: fond,
      letterSpacing: space ?? 1,
      fontSize: size ?? 25,
      fontWeight: FontWeight.bold,
    ),
  );
}

// small titre
Widget subtitleBold({
  double? size,
  Color? textColor,
  final text,
  double? space,
  int? line,
  dynamic align,
}) {
  return Text(
    text!,
    textAlign: align ?? TextAlign.start,
    overflow: TextOverflow.ellipsis,
    maxLines: line ?? 1,
    style: TextStyle(
      color: textColor,
      letterSpacing: space ?? 1,
      fontSize: size ?? 14,
      fontWeight: FontWeight.bold,
    ),
  );
}
//

Widget titreSaisie({
  double? size,
  Color? textColor,
  String? text,
  double? space,
  int? max,
  final over,
}) {
  return Text(
    text!,
    maxLines: max ?? 1,
    overflow: over,
    style: TextStyle(
      color: Colors.grey[800],
      fontSize: size ?? 14,
      fontWeight: FontWeight.bold,
    ),
  );
}
