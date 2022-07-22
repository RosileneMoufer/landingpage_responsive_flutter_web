import 'package:flutter/material.dart';
import 'package:landingpage/components/menu_button_row.dart';
import 'package:landingpage/screen/home.dart';
import 'package:landingpage/sections/menu/menu.dart';
import 'package:landingpage/values/color/colors.dart';
import 'package:landingpage/values/properties/properties.dart';
import 'package:landingpage/values/responsive/responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: secondaryColor,
        canvasColor: secondaryColor,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        title: Responsive.isMobileLarge(context)
            ? Builder(
                builder: (context) => const Center(
                  child: Text("LOGO"),
                ),
              )
            : Center(
                child: Container(
                  constraints: const BoxConstraints(maxWidth: maxWidth),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("LOGO"),
                      Row(
                        children: [
                          MenuButtonRow(title: 'Home'),
                          MenuButtonRow(title: 'Sobre'),
                          MenuButtonRow(title: 'Contato'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
      ),
      endDrawer: Responsive.isMobileLarge(context) ? const Menu() : null,
      body: Center(
        child: SizedBox(
          width: _size.width,
          height: _size.height,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: HomePage(),
          ),
        ),
      ),
    );
  }
}
