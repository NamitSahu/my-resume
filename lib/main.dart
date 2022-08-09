import 'package:flutter/material.dart';
import 'package:my_resume/utils/constants.dart';

import 'screens/desktop_screen.dart';
import 'screens/mobile_screen.dart';

void main() {
  runApp(const ResumeApp());
}

class ResumeApp extends StatelessWidget {
  const ResumeApp({Key? key}) : super(key: key);

  // NAMit
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Namit Resume ',
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > iPadProWidth) {
            return const DesktopScreen();
          } else if ((constraints.maxWidth < iPadProWidth) &&
              (constraints.maxWidth > iPadWidth)) {
            return const DesktopScreen();
          } else if ((constraints.maxWidth < iPadWidth) &&
              (constraints.maxWidth > iPhone7Width)) {
            return MobileScreen();
          } else if ((constraints.maxWidth < iPhone7Width) &&
              (constraints.maxWidth < iPhone5SeWidth)) {
            return MobileScreen();
          } else {
            return MobileScreen();
          }
        },
      ),
    );
  }
}