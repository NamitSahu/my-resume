import 'package:flutter/material.dart';
// import 'package:jdwebapp/utils/constants.dart';
// import 'package:jdwebapp/widgets/EducationWidget.dart';
// import 'package:jdwebapp/widgets/ExperienceWidget.dart';
// import 'package:jdwebapp/widgets/LanguagesWidget.dart';
// import 'package:jdwebapp/widgets/contacts_widget.dart';
// import 'package:jdwebapp/widgets/holder_container.dart';
// import 'package:jdwebapp/widgets/intro_widget.dart';
// import 'package:jdwebapp/widgets/skills_widget.dart';
// import 'package:jdwebapp/widgets/social_widget.dart';
// import 'package:jdwebapp/widgets/text_widget.dart';

import '../utils/constants.dart';
import '../widgets/EducationWidget.dart';
import '../widgets/ExperienceWidget.dart';
import '../widgets/LanguagesWidget.dart';
import '../widgets/contacts_widget.dart';
import '../widgets/holder_container.dart';
import '../widgets/intro_widget.dart';
import '../widgets/skills_widget.dart';
import '../widgets/social_widget.dart';
import '../widgets/text_widget.dart';

class MobileScreen extends StatefulWidget {
  @override
  _MobileScreenState createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  var _opacity = 0.3;
  var _xOffset = 15.0;
  var _yOffset = 15.0;
  var _blurRadius = 15.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.maxFinite,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/slide_2.jpg"),
              fit: BoxFit.cover,
            ),
          ),
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
                height: 100,
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
              const HolderContainer(
                widget: IntroWidget(),
                color: Colors.white,
              ),
              const SizedBox(
                height: 20,
              ),
              const HolderContainer(
                widget:  SkillsWidget(),
                color: Color(0xFF3366CC),
              ),
              const SizedBox(
                height: 20,
              ),
              const HolderContainer(
                widget:  LanguagesWidget(),
                color: Colors.white,
              ),
              const SizedBox(
                height: 20,
              ),
              const HolderContainer(
                widget: EducationWidget(),
                color: Color(0xFF3366CC),
              ),
              const SizedBox(
                height: 20,
              ),
              const HolderContainer(widget: ContactsWidget(), color: Colors.white),
              const SizedBox(
                height: 20,
              ),
              const HolderContainer(
                widget: ExperienceWidget(),
                color: Color(0xFF3366CC),
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
                    height: 60,
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
          )),
    );
  }
}
