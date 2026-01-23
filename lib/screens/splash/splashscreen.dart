import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/login/loginscreen.dart';
import 'package:instagram_clone/widgets/uihelper.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(imgurl: "instagram.png"),
            SizedBox(height: 10),
            UiHelper.CustomImage(imgurl: "logo.png"),
          ],
        ),
      ),
    );
  }
}
