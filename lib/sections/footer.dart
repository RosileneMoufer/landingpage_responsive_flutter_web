import 'package:flutter/material.dart';
import 'package:landingpage/constants/content.dart';
import 'package:landingpage/values/color/colors.dart';
import 'package:landingpage/values/properties/properties.dart';
import 'package:landingpage/values/responsive/responsive.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          footerTitle,
          style: TextStyle(
            color: primaryColor,
            fontWeight: FontWeight.w700,
            fontSize: Responsive.isMobileLarge(context) ? 28 : 32,
          ),
        ),
        const Text(
          footerText,
          style: TextStyle(
            color: secondaryColor,
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: buttonColor,
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(
              vertical: defaultPadding * 0.5,
              horizontal: defaultPadding,
            ),
            child: Text(
              footerButton,
            ),
          ),
        ),
      ],
    );
  }
}
