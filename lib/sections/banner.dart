import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landingpage/values/properties/properties.dart';
import 'package:landingpage/values/responsive/responsive.dart';

import '../values/color/colors.dart';
import '../constants/content.dart';

class BannerHome extends StatelessWidget {
  const BannerHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive.isMobileLarge(context)
        ? Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/rocket.png"),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      bannerHighlight,
                      style: TextStyle(
                        color: highlightColor,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: defaultPadding),
                    Text(
                      bannerTitle,
                      style: GoogleFonts.amiko(
                        color: titleColor,
                        fontSize: 36,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: defaultPadding),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          bannerText1,
                          style: TextStyle(
                            color: textColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 6.0),
                        Text(
                          bannerText2,
                          style: TextStyle(
                            color: textColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      bannerHighlight,
                      style: TextStyle(
                        color: highlightColor,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      bannerTitle,
                      style: TextStyle(
                        color: titleColor,
                        fontSize: 56,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          bannerText1,
                          style: TextStyle(
                            color: textColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 6.0),
                        Text(
                          bannerText2,
                          style: TextStyle(
                            color: textColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/rocket.png")),
                  ),
                ),
              ),
            ],
          );
  }
}
