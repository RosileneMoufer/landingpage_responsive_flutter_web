import 'package:flutter/material.dart';
import 'package:landingpage/sections/about.dart';
import 'package:landingpage/sections/prices.dart';

import '../sections/banner.dart';
import '../sections/benefits.dart';
import '../sections/footer.dart';
import '../values/color/colors.dart';
import '../values/properties/properties.dart';
import '../values/responsive/responsive.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          color: secondaryColor,
          padding: Responsive.isTablet(context)
              ? const EdgeInsets.all(defaultPadding)
              : const EdgeInsets.symmetric(vertical: defaultPadding * 2),
          constraints: const BoxConstraints(maxWidth: maxWidth),
          height: Responsive.isMobileLarge(context)
              ? size.height
              : size.height * 0.8,
          child: const BannerHome(),
        ),
        Container(
          color: secondaryColor,
          padding: Responsive.isTablet(context)
              ? const EdgeInsets.all(defaultPadding)
              : const EdgeInsets.symmetric(vertical: defaultPadding),
          constraints: const BoxConstraints(maxWidth: maxWidth),
          height: Responsive.isMobileLarge(context)
              ? size.height * 0.5
              : size.height * 0.3,
          child: const Prices(),
        ),
        Container(
          alignment: Alignment.center,
          color: secondaryColor,
          padding: Responsive.isTablet(context)
              ? const EdgeInsets.symmetric(
                  horizontal: defaultPadding,
                  vertical: defaultPadding * 4,
                )
              : const EdgeInsets.symmetric(vertical: defaultPadding * 4),
          constraints: const BoxConstraints(maxWidth: maxWidth),
          height: Responsive.isMobileLarge(context)
              ? size.height
              : size.height * 0.8,
          child: About(),
        ),
        Container(
          color: thirdColor,
          constraints: const BoxConstraints(maxWidth: maxWidth),
          height: 1,
        ),
        Container(
          padding: Responsive.isTablet(context)
              ? const EdgeInsets.symmetric(
                  horizontal: defaultPadding,
                  vertical: defaultPadding * 2,
                )
              : null,
          constraints: const BoxConstraints(maxWidth: maxWidth),
          height: Responsive.isMobileLarge(context)
              ? size.height * 0.7
              : size.height * 0.5,
          child: Center(child: Benefits()),
        ),
        Container(
          color: titleColor,
          width: size.width,
          padding: Responsive.isTablet(context)
              ? const EdgeInsets.all(defaultPadding)
              : const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Container(
            constraints: const BoxConstraints(maxWidth: maxWidth),
            height: size.height * 0.4,
            child: Footer(),
          ),
        ),
      ],
    );
  }
}
