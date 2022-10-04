import 'dart:async';
import 'package:login/constant.dart';
import 'package:login/login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => LoginPage(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: blue,
      body: Center(
        child: Image(
          image: AssetImage("D://Mini//Prejin//login//res//pic//logo-blue.png"),
          width: 150,
        ),
      ),
    );
  }
}
