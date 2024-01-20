import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/pages/sign_in/widgets/sign_in_widget.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: buildAppBar(),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildThirdPartyLogin(context),
                Center(child: reusableText("Or use email account login")),
                Container(
                  margin: EdgeInsets.only(top: 36.h),
                  padding: EdgeInsets.only(left: 25.w, right: 25.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      reusableText("Email"),
                      SizedBox(height: 2.h),
                      buildTextField(
                          "Enter your email address", "email", "user"),
                      reusableText("Password"),
                      SizedBox(height: 2.h),
                      buildTextField("Enter your password", "password", "lock")
                    ],
                  ),
                ),
                forgotPassword(),
                buildLogInAndRegisterButton("Log in", "login"),
                buildLogInAndRegisterButton("Register", "register")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
