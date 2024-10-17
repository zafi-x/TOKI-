import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toki/ui/splash/auth/login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(172, 194, 198, 1),
      body: Center(
        child: Container(
          height: 210.h,
          width: 250.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromRGBO(255, 255, 255, 200),
                  blurRadius: 35.r,
                )
              ]),
          child: Center(
            child: Image.asset(
              'assets/logo.png',
              // height: 300.h,
              // width: 300.w,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
