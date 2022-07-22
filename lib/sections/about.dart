import 'package:flutter/material.dart';
import 'package:landingpage/values/color/colors.dart';
import 'package:landingpage/values/properties/properties.dart';
import 'package:landingpage/values/responsive/responsive.dart';

import '../constants/content.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const defaultHeightSizedBox = 8.0;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(defaultPadding),
            decoration: const BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  aboutColumnTitle,
                  style: TextStyle(
                    color: titleColor,
                    fontWeight: FontWeight.w700,
                    fontSize: Responsive.isMobileLarge(context) ? 18 : 24,
                  ),
                ),
                const SizedBox(
                  height: defaultHeightSizedBox * 4,
                ),
                Text(
                  aboutColumnHighlightOne,
                  style: TextStyle(
                    color: secondaryColor,
                    fontSize: Responsive.isMobileLarge(context) ? 14 : 16,
                  ),
                ),
                const SizedBox(
                  height: defaultHeightSizedBox * 1.5,
                ),
                Text(
                  aboutColumnTextOne,
                  style: TextStyle(
                    color: textColor,
                    height: 1.5,
                    fontSize: Responsive.isMobileLarge(context) ? 14 : 16,
                  ),
                ),
                const SizedBox(
                  height: defaultHeightSizedBox * 1.5,
                ),
                Text(
                  aboutColumnHighlightTwo,
                  style: TextStyle(
                    color: secondaryColor,
                    fontSize: Responsive.isMobileLarge(context) ? 14 : 16,
                  ),
                ),
                const SizedBox(
                  height: defaultHeightSizedBox * 1.5,
                ),
                Text(
                  aboutColumnTextTwo,
                  style: TextStyle(
                    color: textColor,
                    fontSize: Responsive.isMobileLarge(context) ? 14 : 16,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 6,
          child: Container(
            padding: const EdgeInsets.only(left: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  aboutTitle,
                  style: TextStyle(
                    fontSize: Responsive.isMobileLarge(context) ? 28 : 32,
                    fontWeight: FontWeight.w700,
                    color: titleColor,
                  ),
                ),
                const Text(
                  aboutTextOne,
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 16,
                  ),
                ),
                const Text(
                  aboutTextTwo,
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 16,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: buttonColor,
                    elevation: 0,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: defaultPadding * 0.5,
                      horizontal: defaultPadding,
                    ),
                    child: Text(aboutButtonText),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
