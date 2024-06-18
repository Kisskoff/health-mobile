// ignore_for_file: camel_case_types

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:wallet_cryptocurrency/Health/Auth/connexion.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/color.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  void initState() {
    super.initState();
    //startTimer();
    navigate();
  }

  // startTimer() {
  //   var duration = Duration(seconds: 6);
  //   return Timer(duration, route);
  // }

  // route() {
  //   //Navigator.pushReplacementNamed(context, '/Connexion');
  //   Navigator.of(context).push(MaterialPageRoute(builder: (_) => Connexion()));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: blanc,
      body: content(),
    );
  }

  Widget content() {
    return Container(
      margin: EdgeInsets.all(5),
      child: Center(
        child: Lottie.asset('lottie/acc.json'),
      ),
    );
  }

  //
  void navigate() {
    //
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const Connexion()),
        (route) => false,
      );
    });
  }
}
