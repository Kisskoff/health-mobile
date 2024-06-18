// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';

class User extends ChangeNotifier {
//class User {
  String email = "";
  String password = "";

/*  User({
    required this.email , required this.password
});*/

  void Connexion(String email, String password) {
    email = email;
    password = password;

    notifyListeners();
  }
}
