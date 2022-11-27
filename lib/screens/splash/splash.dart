import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app/screens/welcome/welcome_screen.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  splashScreenTimer() {
    Timer(const Duration(seconds: 4), () async {
      Navigator.push(context, MaterialPageRoute(builder: (c) => WelcomeScreen()));
    });
  }

  @override
  void initState() {
    super.initState();
    splashScreenTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black,
                Color.fromARGB(255, 55, 52, 52),
              ],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp,
            )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(51.0),
                child: Image.asset("assets/icons/logo1.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
