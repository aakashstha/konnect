import 'package:flutter/material.dart';
import 'package:konnect/consants/colors.dart';
import 'package:konnect/consants/constants.dart';
import 'package:konnect/screens/login.dart';
import 'package:konnect/widgets/text.dart';
import 'package:pixel_perfect/pixel_perfect.dart';

// Pixel Perfect design with image
class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int mockupHeight = 844;
  int mockupWidth = 390;

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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final scale = mockupWidth / width;
    final textScaleFactor = width / mockupWidth;

    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).size.width);

    return PixelPerfect(
      scale: scale,
      assetPath: 'assets/onboarding_pixelperfect.png',
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 0),
                child: Row(
                  children: [
                    dynamicText(
                      "Konnect",
                      22,
                      AppColors.logoColor,
                      FontWeight.bold,
                      tetextScalerValue: textScaleFactor,
                    ),
                  ],
                ),
              ),
              SizedBox(height: screentHeight(context) / 7),
              Image.asset(
                "assets/share_thought.png",
                scale: textScaleFactor * 3.28,
                // width: width / 2.27,
                // height: height / 6.7,
              ),
              SizedBox(height: screentHeight(context) / 31),
              dynamicText(
                "Share your thoughts",
                22,
                AppColors.logoColor,
                FontWeight.w400,
                tetextScalerValue: textScaleFactor,
              ),
              SizedBox(height: screentHeight(context) / 46),

              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: screentWidth(context) / 7),
                child: dynamicText(
                  "Ask a tax question or get in a friendly banter on our discussion forum.",
                  14,
                  AppColors.black,
                  FontWeight.w400,
                  letterSpacing: 0,
                  tetextScalerValue: textScaleFactor,
                ),
              ),
              SizedBox(height: screentHeight(context) / 16),
              // OnBoarding Circle
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  onBoardingButton(
                      size: 10.0, color: AppColors.greyButtonColor),
                  const SizedBox(width: 8),
                  onBoardingButton(size: 24.0, color: AppColors.logoColor),
                ],
              ),
              const Spacer(),

              // Main Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  width: double.infinity,
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
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: dynamicText(
                        "GET STARTED",
                        18,
                        AppColors.black,
                        FontWeight.w600,
                        tetextScalerValue: textScaleFactor,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: screentHeight(context) / 100)
            ],
          ),
        ),
      ),
    );
  }
}
