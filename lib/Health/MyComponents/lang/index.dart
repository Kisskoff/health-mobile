import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_cryptocurrency/Health/ui/aces/home.dart';
import 'package:wallet_cryptocurrency/localization_service.dart';

class Language extends StatefulWidget {
  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  String lng = 'English';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(Trans('LANGUE').tr)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(""),
                SizedBox(
                  width: 10,
                ),
                new DropdownButton<String>(
                  items: LocalizationService.langs.map(
                    (String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    },
                  ).toList(),
                  value: this.lng,
                  underline: Container(color: Colors.transparent),
                  isExpanded: false,
                  onChanged: (newVal) {
                    setState(() {
                      this.lng = newVal!;
                      LocalizationService().changeLocale(newVal);
                    });
                  },
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Text('Continuer'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
