import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends StatelessWidget {
  final String text;
  const MyText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: GoogleFonts.lato(
            fontSize: 42.sp,
            color: const Color.fromARGB(255, 78, 78, 78),
            fontWeight: FontWeight.bold,
            letterSpacing: 1),
      ),
    );
  }
}
