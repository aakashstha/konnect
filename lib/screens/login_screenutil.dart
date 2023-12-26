import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:konnect/consants/colors.dart';
import 'package:konnect/widgets/text.dart';
import 'package:pixel_perfect/pixel_perfect.dart';

// Using flutter_screenutil package for responsiveness in all screens.
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (_, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        );
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int mockupHeight = 844;
  int mockupWidth = 390;

  Widget customElevatedButton1({
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
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
      onPressed: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              iconImage,
              height: 22.h,
            ),
            SizedBox(width: 12.w),
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

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).size.width);

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final scale = mockupWidth / width;

    return PixelPerfect(
      scale: scale,
      assetPath: 'assets/login.png',
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 5.h),
                Row(
                  children: [
                    dynamicText(
                      "Konnect",
                      22.sp,
                      AppColors.logoColor,
                      FontWeight.bold,
                    ),
                  ],
                ),

                SizedBox(height: 160.h),
                dynamicText(
                  "Get Started",
                  24.sp,
                  AppColors.black,
                  FontWeight.w600,
                ),
                SizedBox(height: 45.h),

                // Login Buttons
                customElevatedButton1(
                  buttonBackground: AppColors.googleButtonColor,
                  iconImage: "assets/google.png",
                  text: "Continue with Google",
                  fontSize: 18.sp,
                  color: AppColors.textBlackColor,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: 15.h),
                customElevatedButton1(
                  buttonBackground: AppColors.linkedinButtonColor,
                  iconImage: "assets/linkedin.png",
                  text: "Continue with LinkedIn",
                  fontSize: 18.sp,
                  color: AppColors.white,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: 15.h),
                customElevatedButton1(
                  buttonBackground: AppColors.black,
                  iconImage: "assets/apple.png",
                  text: "Continue with Apple",
                  fontSize: 18.sp,
                  color: AppColors.white,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: 35.h),

                Text.rich(
                  TextSpan(
                    text: "By continuing, you agree to our ",
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.5.w,
                    ),
                    children: [
                      TextSpan(
                        text: 'terms of service',
                        style: TextStyle(
                          fontSize: 12.sp,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.googleButtonColor,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.5.w,
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
