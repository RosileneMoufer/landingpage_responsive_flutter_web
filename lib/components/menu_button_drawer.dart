import 'package:flutter/material.dart';

import '../values/color/colors.dart';
import '../values/properties/properties.dart';

class MenuButtonDrawer extends StatefulWidget {
  MenuButtonDrawer({Key? key, required this.title}) : super(key: key);

  String title;

  _MenuButtonDrawerState createState() => _MenuButtonDrawerState();
}

class _MenuButtonDrawerState extends State<MenuButtonDrawer> {
  Color currentBackgroundColor = menuButtonColor;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          currentBackgroundColor = menuButtonHoverColor;
        });
      },
      onExit: (event) {
        setState(() {
          currentBackgroundColor = menuButtonColor;
        });
      },
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          primary: secondaryColor,
          backgroundColor: currentBackgroundColor,
          elevation: 0,
          side: BorderSide.none,
          alignment: Alignment.centerLeft,
        ),
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Text(
            widget.title,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
