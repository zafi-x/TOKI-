import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toki/ui/custom_widgets/Text_feild.dart';
import 'package:toki/ui/custom_widgets/button.dart';
import 'package:toki/ui/custom_widgets/text.dart';

class RegisterScreen extends StatefulWidget {
  final Function()? onTap;
  const RegisterScreen({super.key, required this.onTap});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final CpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(172, 194, 198, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 35.h,
                ),
                MyText(text: 'Register Now'),
                MyText(text: 'TO'),
                MyText(text: 'TOKI'),
                SizedBox(
                  height: 35.h,
                ),
                MyTextField(
                  controller: emailController,
                  hintTest: 'email',
                  obscureText: false,
                ),
                SizedBox(
                  height: 18.h,
                ),
                MyTextField(
                    controller: passwordController,
                    hintTest: 'password',
                    obscureText: true),
                SizedBox(
                  height: 18.h,
                ),
                MyTextField(
                    controller: CpasswordController,
                    hintTest: 'Confirm password',
                    obscureText: true),
                SizedBox(
                  height: 35.h,
                ),
                MyButton(
                  name: 'Register',
                  ontap: () {},
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account? ',
                        style: GoogleFonts.lato(
                          fontSize: 14.sp,
                          color: const Color.fromARGB(255, 78, 78, 78),
                        ),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: Text(
                          'Login',
                          style: GoogleFonts.lato(
                            fontSize: 15.sp,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
