import 'package:flutter/material.dart';

import '../utils/constants.dart';
import 'text_widget.dart';


class EducationWidget extends StatelessWidget {
  const EducationWidget({
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
          text: 'Education',
        ),
        TextWidget(
          padding: EdgeInsets.only(top: 10),
          text: 'Bachelor of Technology',
          color: Color(0xff61AAF1),
          textSize: 30,
        ),
        TextWidget(
          padding:  EdgeInsets.only(top: 20),
          color: Colors.white,
          fontFamilyName: proxima,
          textSize: 18,
          text:
              'Shri Shankaracharya Group of Institutions Bhilai Chhattisgarh\n2019 - 2020',
        ),
        TextWidget(
          padding: EdgeInsets.only(top: 10),
          color: Colors.white,
          fontFamilyName: proxima,
          textSize: 16,
          text: 'Computer Science Engineering',
        ),
        TextWidget(
          padding: EdgeInsets.only(top: 10),
          text: 'School Qualification',
          color: Color(0xff61AAF1),
          textSize: 30,
        ),
        TextWidget(
          padding:  EdgeInsets.only(top: 20),
          color: Colors.white,
          fontFamilyName: proxima,
          textSize: 18,
          text:
              'Senior Secondary School Sector Seven\n2019 - 2020',
        ),
        TextWidget(
          padding: EdgeInsets.only(top: 10),
          color: Colors.white,
          fontFamilyName: proxima,
          textSize: 16,
          text: '12th Standard',
        ),
      ],
    );
  }
}
