import 'package:flutter/material.dart';
// import 'package:jdwebapp/utils/constants.dart';
// import 'package:jdwebapp/widgets/EducationWidget.dart';
// import 'package:jdwebapp/widgets/ExperienceWidget.dart';
// import 'package:jdwebapp/widgets/LanguagesWidget.dart';
// import 'package:jdwebapp/widgets/contacts_widget.dart';
// import 'package:jdwebapp/widgets/intro_widget.dart';
// import 'package:jdwebapp/widgets/skills_widget.dart';
// import 'package:jdwebapp/widgets/social_widget.dart';
// import 'package:jdwebapp/widgets/text_widget.dart';

import '../utils/constants.dart';
import '../widgets/EducationWidget.dart';
import '../widgets/ExperienceWidget.dart';
import '../widgets/LanguagesWidget.dart';
import '../widgets/contacts_widget.dart';
import '../widgets/intro_widget.dart';
import '../widgets/skills_widget.dart';
import '../widgets/social_widget.dart';
import '../widgets/text_widget.dart';

class DesktopScreen extends StatefulWidget {
  const DesktopScreen({Key? key}) : super(key: key);

  @override
  _DesktopScreenState createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {
  late MediaQueryData _queryData;
  var _opacity = 0.3;
  var _xOffset = 15.0;
  var _yOffset = 15.0;
  var _blurRadius = 15.0;
  var timer;

  ceateTimer() {
    timer = Future.delayed(const Duration(seconds: 3), () {
      // deleayed code here
      debugPrint('delayed execution');
    });
  }

  @override
  Widget build(BuildContext context) {
    _queryData = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        decoration: myBackground,
        child: ListView(
          children: [
            const SizedBox(
              height: 70,
            ),
            Image.asset(
              'assets/images/my_image.png',
              width: 200,
              height: 200,
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Wrap(children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        decoration: const BoxDecoration(color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Hi! I am Namit',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 60,
                                fontFamily: 'Proxima',
                                shadows: [
                                  Shadow(
                                    color: Colors.blue.shade900
                                        .withOpacity(_opacity),
                                    offset: Offset(_xOffset, _yOffset),
                                    blurRadius: _blurRadius,
                                  )
                                ]),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(color: Colors.black),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Android Developer (Flutter)',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 60,
                              fontFamily: 'Proxima',
                              shadows: [
                                Shadow(
                                  color: Colors.blue.shade900
                                      .withOpacity(_opacity),
                                  offset: Offset(_xOffset, _yOffset),
                                  blurRadius: _blurRadius,
                                )
                              ]),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
            const SizedBox(
              height: 70,
            ),
            IntrinsicHeight(
              child: Row(
                children: [
                  SizedBox(
                    width: _queryData.size.width * 0.10,
                  ),
                  Container(
                    width: _queryData.size.width * 0.39,
                    padding: const EdgeInsets.all(32),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: const IntroWidget(),
                  ),
                  SizedBox(
                    width: _queryData.size.width * 0.02,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0xFF3366CC),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    width: _queryData.size.width * 0.39,
                    padding: const EdgeInsets.all(32),
                    child: const SkillsWidget(),
                  ),
                  SizedBox(
                    width: _queryData.size.width * 0.10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: _queryData.size.width * 0.02,
            ),
            IntrinsicHeight(
              child: Row(
                children: [
                  SizedBox(
                    width: _queryData.size.width * 0.10,
                  ),
                  Container(
                    width: _queryData.size.width * 0.49,
                    padding: const EdgeInsets.all(32),
                    decoration: const BoxDecoration(
                        color: Color(0xFF3366CC),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: const EducationWidget(),
                  ),
                  SizedBox(
                    width: _queryData.size.width * 0.02,
                  ),
                  Container(
                    width: _queryData.size.width * 0.29,
                    padding: const EdgeInsets.all(32),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: const LanguagesWidget(),
                  ),
                  SizedBox(
                    width: _queryData.size.width * 0.10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: _queryData.size.width * 0.02,
            ),
            IntrinsicHeight(
              child: Row(
                children: [
                  SizedBox(
                    width: _queryData.size.width * 0.10,
                  ),
                  Container(
                    width: _queryData.size.width * 0.29,
                    padding: const EdgeInsets.all(32),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: const ContactsWidget(),
                  ),
                  SizedBox(
                    width: _queryData.size.width * 0.02,
                  ),
                  Container(
                    width: _queryData.size.width * 0.49,
                    padding: const EdgeInsets.all(32),
                    decoration: const BoxDecoration(
                        color: Color(0xFF3366CC),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: const ExperienceWidget(),
                  ),
                  SizedBox(
                    width: _queryData.size.width * 0.10,
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                // color: Colors.black.withOpacity(0.5)
                gradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(0.1),
                    Colors.black.withOpacity(0.9),
                  ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(0.0, 1.0),
                  // stops: const [0.0, 1.0],
                  tileMode: TileMode.clamp,
                ),
              ),
              child: Column(
                children: const [
                  SizedBox(
                    height: 120,
                  ),
                  TextWidget(
                    padding: EdgeInsets.only(top: 20),
                    color: Colors.black,
                    fontFamilyName: proxima,
                    textAlign: TextAlign.center,
                    textSize: 16,
                    text: 'Copyright © 2022 My Flutter Profile',
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  SocialWidget(),
                  SizedBox(
                    height: 70,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getCircularImage(double size) {
    return CircleAvatar(
      radius: size,
      backgroundColor: Colors.indigo,
      child: CircleAvatar(
        radius: 2,
        child: ClipOval(
            child: Image.network(
                'https://dummyimage.com/200x200/000000/fff&text=test')),
      ),
    );
  }
}
