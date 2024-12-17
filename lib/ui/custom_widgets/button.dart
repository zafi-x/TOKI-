import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final Function()? ontap;
  final String name;
  const MyButton({super.key, required this.ontap, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      width: 250.w,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Center(
        child: Text(
          name,
          style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 22.sp,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
