import 'package:flutter/material.dart';
import 'package:landingpage/components/menu_button_drawer.dart';
import 'package:landingpage/values/color/colors.dart';
import 'package:landingpage/values/properties/properties.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    Size size = MediaQuery.of(context).size;
    return Drawer(
      child: Container(
        color: primaryColor,
        width: size.width,
        height: size.height,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "LOGO",
                      style: TextStyle(fontSize: 20),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: TextButton.styleFrom(
                        primary: secondaryColor,
                        backgroundColor: primaryColor,
                        elevation: 0,
                        side: BorderSide.none,
                        alignment: Alignment.centerRight,
                      ),
                      child: const Icon(
                        Icons.close,
                        size: 26,
                      ),
                    ),
                  ]),
            ),
            MenuButtonDrawer(title: 'Home'),
            MenuButtonDrawer(title: 'Sobre'),
            MenuButtonDrawer(title: 'Contato'),
          ],
        ),
      ),
    );
  }
}
