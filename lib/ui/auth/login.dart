import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:toki/ui/auth/loginProvider/login_provider.dart';
import 'package:toki/ui/custom_widgets/Text_feild.dart';
import 'package:toki/ui/custom_widgets/button.dart';
import 'package:toki/ui/custom_widgets/text.dart';

class LoginScreen extends StatefulWidget {
  final Function()? ontap;
  const LoginScreen({super.key, required this.ontap});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginProvider(),
      child: Consumer<LoginProvider>(
        builder: (context, model, child) => Scaffold(
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
                    MyText(text: 'Wellcome'),
                    MyText(text: 'TO'),
                    MyText(text: 'TOKI'),
                    SizedBox(
                      height: 35.h,
                    ),
                    MyTextField(
                      controller: model.emailController,
                      hintTest: 'email',
                      obscureText: false,
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    MyTextField(
                        controller: model.passwordController,
                        hintTest: 'password',
                        obscureText: true),
                    SizedBox(
                      height: 35.h,
                    ),
                    MyButton(
                      name: 'Sign In',
                      ontap: () {},
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Not a member? ',
                            style: GoogleFonts.lato(
                              fontSize: 16.sp,
                              color: const Color.fromARGB(255, 78, 78, 78),
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          GestureDetector(
                            onTap: widget.ontap,
                            child: Text(
                              'Register ',
                              style: GoogleFonts.lato(
                                fontSize: 16.sp,
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
        ),
      ),
    );
  }
}
