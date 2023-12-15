import 'package:flutter/material.dart';
import 'package:konnect/consants/colors.dart';
import 'package:konnect/consants/constants.dart';
import 'package:konnect/widgets/text.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 12),
              Row(
                children: [
                  dynamicText(
                      "Konnect", 22, AppColors.logoColor, FontWeight.bold),
                ],
              ),
              SizedBox(height: screentHeight(context) / 5.5),
              dynamicText(
                "Get Started",
                24,
                AppColors.black,
                FontWeight.w600,
              ),
              SizedBox(height: screentHeight(context) / 16.8),

              // Login Buttons
              customElevatedButton(
                buttonBackground: AppColors.googleButtonColor,
                iconImage: "assets/google.png",
                text: "Continue with Google",
                fontSize: 18,
                color: AppColors.textBlackColor,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(height: 15),
              customElevatedButton(
                buttonBackground: AppColors.linkedinButtonColor,
                iconImage: "assets/linkedin.png",
                text: "Continue with LinkedIn",
                fontSize: 18,
                color: AppColors.white,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(height: 15),
              customElevatedButton(
                buttonBackground: AppColors.black,
                iconImage: "assets/apple.png",
                text: "Continue with Apple",
                fontSize: 18,
                color: AppColors.white,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: screentHeight(context) / 22),

              const Text.rich(
                TextSpan(
                  style: TextStyle(fontSize: 14, color: Colors.black),
                  text: "By continuing, you agree to our ",
                  children: [
                    TextSpan(
                      text: 'terms of service',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.googleButtonColor,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget customElevatedButton({
  required Color buttonBackground,
  required String iconImage,
  required String text,
  required double fontSize,
  required Color color,
  required FontWeight fontWeight,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: buttonBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    onPressed: () {},
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            iconImage,
            height: 22,
          ),
          const SizedBox(width: 12),
          dynamicText(
            text,
            fontSize,
            color,
            fontWeight,
          ),
        ],
      ),
    ),
  );
}
