import 'package:flutter/material.dart';

import '../../values/color/colors.dart';

class BenefitsComponent extends StatelessWidget {
  BenefitsComponent({Key? key, this.text}) : super(key: key);

  String? text;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            width: _size.width * 0.2,
            height: _size.width * 0.1,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/rocket.png"),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            text!,
            style: const TextStyle(
              color: textColor,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
