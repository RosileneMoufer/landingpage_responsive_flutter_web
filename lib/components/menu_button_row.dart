import 'package:flutter/material.dart';
import 'package:landingpage/values/properties/properties.dart';

import '../values/color/colors.dart';

class MenuButtonRow extends StatefulWidget {
  MenuButtonRow({Key? key, required this.title}) : super(key: key);

  String? title;

  _MenuButtonRowState createState() => _MenuButtonRowState();
}

class _MenuButtonRowState extends State<MenuButtonRow> {
  Color currentBackgroundColor = primaryColor;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() {
        currentBackgroundColor = menuButtonHoverColor;
      }),
      onExit: (event) => setState(() {
        currentBackgroundColor = primaryColor;
      }),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: secondaryColor,
          backgroundColor: currentBackgroundColor,
          padding: const EdgeInsets.all(defaultPadding),
        ),
        onPressed: () {},
        child: Text(
          widget.title!,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
