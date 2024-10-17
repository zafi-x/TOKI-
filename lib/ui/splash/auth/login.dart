import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toki/main.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(172, 194, 198, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Welcome To\nTOKI',
                  style: GoogleFonts.lato(
                      fontSize: 42.sp,
                      color: const Color.fromARGB(255, 78, 78, 78),
                      fontWeight: FontWeight.bold),
                ),
                //
              )
            ],
          ),
        ),
      ),
    );
  }
}
