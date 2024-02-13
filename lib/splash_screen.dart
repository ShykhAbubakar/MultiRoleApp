import 'dart:async';

import 'package:flutter/material.dart';
import 'package:multiroleapp/home_screen.dart';
import 'package:multiroleapp/login_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.network('https://images.pexels.com/photos/327158/pexels-photo-327158.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      fit: BoxFit.fitHeight,
        height: double.infinity,
      ),
    );
  }
}
