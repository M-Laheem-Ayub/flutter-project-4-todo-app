// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_4/MainPage.dart';
import 'package:flutter_application_4/MyDrawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool increaseWidth = false;
  bool isDark = false;
  void darkMode() {
    setState(() {
      isDark = !isDark;
    });
  }

  void sideBarArgester() {
    setState(() {
      increaseWidth = !increaseWidth;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: isDark ? Color(0xff101218) : Colors.white,
        appBar: AppBar(
          shadowColor: isDark ? Colors.white : Colors.black,
          elevation: increaseWidth ? 2 : 0,
          backgroundColor: isDark ? Color(0xff101218) : Colors.white,
          leading: IconButton(
            onPressed: () {
              sideBarArgester();
            },
            icon: Icon(
              increaseWidth ? Icons.arrow_back_outlined : Icons.menu,
              color: isDark ? Colors.white : Color(0xff363e45),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              MainPage(isDark: isDark),

              MyDrawer(
                increaseWidth: increaseWidth,
                isDark: isDark,
                darkMode: darkMode,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
