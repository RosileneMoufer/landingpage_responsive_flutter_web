import 'package:flutter/material.dart';
import 'package:landingpage/values/properties/properties.dart';

class PriceComponent extends StatelessWidget {
  PriceComponent({
    Key? key,
    @required this.backgroundColor,
    @required this.titleColor,
    @required this.highlightColor,
    @required this.textColor,
    @required this.title,
    @required this.highlight,
    @required this.text,
    @required this.topLeft,
    @required this.topRight,
    @required this.bottomLeft,
    @required this.bottomRight,
  }) : super(key: key);

  Color? backgroundColor;
  Color? titleColor;
  Color? highlightColor;
  Color? textColor;
  String? title;
  String? highlight;
  String? text;
  double? topLeft;
  double? topRight;
  double? bottomLeft;
  double? bottomRight;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topLeft!),
            topRight: Radius.circular(topRight!),
            bottomLeft: Radius.circular(bottomLeft!),
            bottomRight: Radius.circular(bottomRight!),
          ),
        ),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  title!,
                  style: TextStyle(
                    color: titleColor!,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                  highlight!,
                  style: TextStyle(
                    color: highlightColor,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Text(
              text!,
              style: TextStyle(
                color: textColor!,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
