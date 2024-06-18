// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class LINK {
  static const String LINK_REQ =
      "https://macha--portfolio.000webhostapp.com/HealthMoney";
}

class SP_KEY {
  static const String CURRENT_CURRENCY = "cur_cur";
  static const String CURRENT_LANGUAGE = "cur_lang";
  static const String HISTORY = "hitory";
  static const String BALANCE_ACOUNT = "balance";
  static const String BALANCE_INCOME = "balance_income";
  static const String BALANCE_EXPENSE = "balance_expense";
  static const String EXPE_PHONE = "expe_phone";
  static const String EXPE_PURCHASE = "expe_purchase";
  static const String EXPE_TRANSPORT = "expe_transport";
  static const String EXPE_BILL = "expe_bill";
  static const String EXPE_FOOD = "expe_food";
  static const String EXPE_SUBSCRIPTION = "expe_subscription";
  static const String EXPE_ASSURANCE = "expe_assurance";
  static const String EXPE_HEALTH = "expe_health";
  static const String EXPE_CONTRIBUTION = "expe_contribution";
  static const String EXPE_OTHER = "expe_other";
  static const String INC_SALARY = "inc_salary";
  static const String INC_INCADD = "inc_incadd";
  static const String WEEK = "week";
  static const String MONTH = "month";
  static const String IS_CURRENT_CONNECT = "is_current_connect";
  static const String USER_INFO = "user_info";
  static const String WALLET  = "wallet_code";
}

class CONST_INT {
  static const int PHONE = 0;
  static const int PURCHASE = 1;
  static const int TANSPORT = 2;
  static const int BILL = 3;
  static const int FOOD = 4;
  static const int SUBS = 5;
  static const int ASSU = 6;
  static const int HEALTH = 7;
  static const int CONTRIBUTION = 8;
  static const int OTHER = 9;

  static const int SALARY = 10;
  static const int INCADD = 11;
}

class CONST_CAT {
  static final List<String> listAssetsCatexpense = [
    "assets/images/mobile.png",
    "assets/images/purchase.png",
    "assets/images/car.png",
    "assets/images/validating-ticket.png",
    "assets/images/diet.png",
    "assets/images/subscribe.png",
    "assets/images/subscription.png",
    "assets/images/health.png",
    "assets/images/contribution.png",
    "assets/images/three-dots.png",
  ];

  static final List<String> listAssetsCatIncome = [
    "assets/images/salary.png",
    "assets/images/salary (1).png",
  ];
}

class CONST_COLOR {
  static const List<Color> borderColorsCatExpe = [
    Color.fromARGB(150, 239, 82, 97),
    Color.fromARGB(150, 255, 234, 167),
    Color.fromARGB(150, 254, 112, 88),
    Color.fromARGB(150, 80, 173, 128),
    Color.fromARGB(150, 247, 147, 30),
    Color.fromARGB(150, 255, 184, 169),
    Color.fromARGB(255, 216, 236, 254),
    Color.fromARGB(150, 151, 218, 123),
    Color.fromARGB(150, 254, 201, 163),
    Color.fromARGB(150, 57, 79, 225),
  ];

  static const List<Color> borderColorsCatInc = [
    Color.fromARGB(150, 255, 235, 153),
    Color.fromARGB(150, 232, 174, 77),
  ];
}

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

  String? validateEmail(String? value) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return 'adresse invalide';
    } else {
      return null;
    }
  }
}
