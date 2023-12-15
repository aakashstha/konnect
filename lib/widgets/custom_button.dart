import 'package:flutter/material.dart';
import 'package:konnect/widgets/text.dart';

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
