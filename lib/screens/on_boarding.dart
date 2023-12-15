import 'package:flutter/material.dart';
import 'package:konnect/consants/colors.dart';
import 'package:konnect/consants/constants.dart';
import 'package:konnect/screens/login.dart';
import 'package:konnect/widgets/text.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  Widget onBoardingButton({required double size, required Color color}) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size.height);
    // print(MediaQuery.of(context).size.width);

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 12),
              child: Row(
                children: [
                  dynamicText(
                      "Konnect", 22, AppColors.logoColor, FontWeight.bold),
                ],
              ),
            ),
            SizedBox(height: screentHeight(context) / 7.6),
            Image.asset(
              "assets/share_thought.png",
              width: 189,
              height: 139,
            ),
            SizedBox(height: screentHeight(context) / 28),
            dynamicText("Share your thoughts", 22, AppColors.logoColor,
                FontWeight.w500),
            SizedBox(height: screentHeight(context) / 42),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: screentWidth(context) / 7.5),
              child: dynamicText(
                "Ask a tax question or get in a friendly banter on our discussion forum.",
                14,
                AppColors.black,
                FontWeight.w400,
              ),
            ),
            SizedBox(height: screentHeight(context) / 13.5),
            // OnBoarding Button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                onBoardingButton(size: 10.0, color: AppColors.greyButtonColor),
                const SizedBox(width: 8),
                onBoardingButton(size: 24.0, color: AppColors.logoColor),
              ],
            ),
            const Spacer(),

            // Main Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.yellowButtonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: dynamicText(
                        "GET STARTED",
                        18,
                        AppColors.black,
                        FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: screentHeight(context) / 70)
          ],
        ),
      ),
    );
  }
}
