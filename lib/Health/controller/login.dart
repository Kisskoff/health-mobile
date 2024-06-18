// ignore_for_file: non_constant_identifier_names

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wallet_cryptocurrency/Health/model/user.dart';
import 'package:wallet_cryptocurrency/utils/api.dart';

import '../ui/aces/home.dart';

class LoginController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  String _message = "";
  String nom = "";

  Future<void> submit() async {
    User user = User(email: email.text.trim(), password: password.text.trim());
    try {
      bool validateResult = ValidateUser(user);
      if (validateResult) {
        bool serverResponse = await authenticateUser(user);
        if (serverResponse) {
          SharedPreferences localStorage =
              await SharedPreferences.getInstance();
          localStorage.setString('email', user.email);
          await showMessage(
              context: Get.context!,
              title: Trans("Succes").tr,
              message: Trans("Vous etes Connecte").tr,
              page: Home());
        } else {
          await showMessage(
            context: Get.context!,
            title: 'Error',
            message: '',
          );
        }
      } else {
        await showMessage(
            context: Get.context!,
            title: Trans("Erreur").tr,
            message: _message);
      }
    } catch (e) {}
  }

  bool ValidateUser(User user) {
    if (user.email.isEmpty & user.password.isEmpty) {
      _message = Trans("champs vide").tr;
      return false;
    }
    if (user.email.toString().isEmpty) {
      _message = Trans("email peut pas etre vide").tr;
      return false;
    }
    if (user.password.toString().isEmpty) {
      _message = Trans("password peut pas etre vide").tr;
      return false;
    }
    return true;
  }

  Future<bool> authenticateUser(User user) async {
    Dio dio = Dio(BaseOptions(connectTimeout: Duration(seconds: 3)));

    try {
      Map<String, dynamic> requestData = {
        'username': user.email,
        'password': user.password
      };

      final response = await dio.post(ApiEndPoints.baseUrl + '/auth/login',
          data: requestData);

      print(response.statusCode);
      //print(localStorage.get(email as String));
      if (response.statusCode == 200 || response.statusCode == 201) {
        SharedPreferences localStorage = await SharedPreferences.getInstance();
        localStorage.setString('nom', response.data['name']);
        //print(response.data['name']);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  showMessage(
      {required BuildContext context,
      required String title,
      required String message,
      Widget? page}) {
    showCupertinoDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              CupertinoDialogAction(
                child: Text('OK'),
                onPressed: () {
                  if (page != null) {
                    Get.offAll(page);
                  } else {
                    Get.back();
                  }
                },
              )
            ],
          );
        });
  }
}
