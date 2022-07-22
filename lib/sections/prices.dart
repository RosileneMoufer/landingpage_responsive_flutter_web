import 'package:flutter/material.dart';
import 'package:landingpage/components/price_component.dart';

import '../constants/content.dart';
import '../values/color/colors.dart';
import '../values/properties/properties.dart';
import '../values/responsive/responsive.dart';

class Prices extends StatelessWidget {
  const Prices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: thirdColor,
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
        ),
        Responsive.isMobileLarge(context)
            ? Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        PriceComponent(
                          backgroundColor: thirdColor,
                          titleColor: titleColor,
                          highlightColor: highlightColor,
                          textColor: textColor,
                          title: pricesSectionOneTitle,
                          highlight: pricesSectionOneHighlight,
                          text: pricesSectionOneText,
                          topLeft: 8.0,
                          topRight: 0.0,
                          bottomLeft: 0.0,
                          bottomRight: 0.0,
                        ),
                        Container(
                          color: primaryColor,
                          width: 1,
                        ),
                        PriceComponent(
                          backgroundColor: thirdColor,
                          titleColor: titleColor,
                          highlightColor: highlightColor,
                          textColor: textColor,
                          title: pricesSectionTwoTitle,
                          highlight: pricesSectionTwoHighlight,
                          text: pricesSectionTwoText,
                          topLeft: 0.0,
                          topRight: 8.0,
                          bottomLeft: 0.0,
                          bottomRight: 0.0,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: primaryColor,
                    height: 1,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        PriceComponent(
                          backgroundColor: thirdColor,
                          titleColor: titleColor,
                          highlightColor: highlightColor,
                          textColor: textColor,
                          title: pricesSectionThreeTitle,
                          highlight: pricesSectionThreeHighlight,
                          text: pricesSectionThreeText,
                          topLeft: 0.0,
                          topRight: 0.0,
                          bottomLeft: 8.0,
                          bottomRight: 0.0,
                        ),
                        PriceComponent(
                          backgroundColor: primaryColor,
                          titleColor: titleColor,
                          highlightColor: secondaryColor,
                          textColor: textColor,
                          title: pricesSectionFourTitle,
                          highlight: pricesSectionFourHighlight,
                          text: pricesSectionFourText,
                          topLeft: 0.0,
                          topRight: 0.0,
                          bottomLeft: 0.0,
                          bottomRight: 8.0,
                        ),
                      ],
                    ),
                  )
                ],
              )
            : Row(
                children: [
                  PriceComponent(
                    backgroundColor: thirdColor,
                    titleColor: titleColor,
                    highlightColor: highlightColor,
                    textColor: textColor,
                    title: pricesSectionOneTitle,
                    highlight: pricesSectionOneHighlight,
                    text: pricesSectionOneText,
                    topLeft: 8.0,
                    topRight: 0.0,
                    bottomLeft: 8.0,
                    bottomRight: 0.0,
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    color: primaryColor,
                    width: 1,
                  ),
                  PriceComponent(
                    backgroundColor: thirdColor,
                    titleColor: titleColor,
                    highlightColor: highlightColor,
                    textColor: textColor,
                    title: pricesSectionTwoTitle,
                    highlight: pricesSectionTwoHighlight,
                    text: pricesSectionTwoText,
                    topLeft: 0.0,
                    topRight: 0.0,
                    bottomLeft: 0.0,
                    bottomRight: 0.0,
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    color: primaryColor,
                    width: 1,
                  ),
                  PriceComponent(
                    backgroundColor: thirdColor,
                    titleColor: titleColor,
                    highlightColor: highlightColor,
                    textColor: textColor,
                    title: pricesSectionThreeTitle,
                    highlight: pricesSectionThreeHighlight,
                    text: pricesSectionThreeText,
                    topLeft: 0.0,
                    topRight: 0.0,
                    bottomLeft: 0.0,
                    bottomRight: 0.0,
                  ),
                  PriceComponent(
                    backgroundColor: primaryColor,
                    titleColor: titleColor,
                    highlightColor: secondaryColor,
                    textColor: textColor,
                    title: pricesSectionFourTitle,
                    highlight: pricesSectionFourHighlight,
                    text: pricesSectionFourText,
                    topLeft: 0.0,
                    topRight: 8.0,
                    bottomLeft: 0.0,
                    bottomRight: 8.0,
                  ),
                ],
              ),
      ],
    );
  }
}
