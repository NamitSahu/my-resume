import 'package:flutter/material.dart';

import '../utils/constants.dart';
import 'text_widget.dart';


class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TextWidget(
          fontFamilyName: proxima,
          color: Colors.white,
          textSize: 28,
          text: 'Projects',
        ),

        // 1ST PROJECT
        TextWidget(
          padding: EdgeInsets.only(top: 10),
          text: 'Whatsapp Responsive UI',
          color: Color(0xff61AAF1),
          textSize: 30,
        ),
        TextWidget(
          padding:  EdgeInsets.only(top: 20),
          color: Colors.white,
          fontFamilyName: proxima,
          textSize: 18,
          text:
              'Jul 2022- Jul 2022',
        ),
        TextWidget(
          padding: EdgeInsets.only(top: 10),
          color: Colors.white,
          fontFamilyName: proxima,
          textSize: 16,
          text: 'Its an responsive UI which is work on different device(Mobile and Web). Using a MediaQuery',
        ),

        // 2ND PROJECT
        TextWidget(
          padding: EdgeInsets.only(top: 10),
          text: 'Ecommerce App',
          color: Color(0xff61AAF1),
          textSize: 30,
        ),
        TextWidget(
          padding:  EdgeInsets.only(top: 20),
          color: Colors.white,
          fontFamilyName: proxima,
          textSize: 18,
          text:
              'Aug 2022 - Present',
        ),
        TextWidget(
          padding: EdgeInsets.only(top: 10),
          color: Colors.white,
          fontFamilyName: proxima,
          textSize: 16,
          text: 'Ecommerce App using Firebase as a database to authenticate and store data. The following app is made up of MVC pattern where all the business logic Presentation User Input and Data(model) are separate. And using Bloc as a State Management',
        ),
      ],
    );
  }
}