import 'package:flutter/material.dart';
import 'package:landingpage/components/benefits/benefits_component.dart';
import 'package:landingpage/values/properties/properties.dart';
import 'package:landingpage/values/responsive/responsive.dart';

import '../constants/content.dart';
import '../values/color/colors.dart';

class Benefits extends StatelessWidget {
  Benefits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Responsive.isMobileLarge(context)
            ? const Expanded(
                flex: 1,
                child: Center(
                  child: Text(
                    benefitsTitle,
                    style: TextStyle(
                      color: titleColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 28,
                    ),
                  ),
                ),
              )
            : const Text(
                benefitsTitle,
                style: TextStyle(
                  color: titleColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 32,
                ),
              ),
        Responsive.isMobileLarge(context)
            ? Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BenefitsComponent(
                      text: benefitsSectionOne,
                    ),
                    BenefitsComponent(
                      text: benefitsSectionTwo,
                    ),
                    BenefitsComponent(
                      text: benefitsSectionThree,
                    ),
                  ],
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: BenefitsComponent(
                      text: benefitsSectionOne,
                    ),
                  ),
                  Expanded(
                    child: BenefitsComponent(
                      text: benefitsSectionTwo,
                    ),
                  ),
                  Expanded(
                    child: BenefitsComponent(
                      text: benefitsSectionThree,
                    ),
                  ),
                ],
              ),
      ],
    );
  }
}
