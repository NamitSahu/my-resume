import 'package:flutter/material.dart';

import '../utils/constants.dart';
import 'text_widget.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextWidget(
          text: 'Skills',
          fontFamilyName: proxima,
          textSize: 28,
          color: Colors.white,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              TextWidget(
                text: 'Flutter',
                textSize: 16,
                fontFamilyName: proxima,
                color: Colors.white,
              ),
              TextWidget(
                text: '90%',
                textSize: 16,
                color: Colors.white,
              ),
            ],
          ),
        ),
        const LinearProgressIndicator(
            value: 0.9,
            backgroundColor: Colors.white,
            valueColor: AlwaysStoppedAnimation<Color>(Color(0xff204190))),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              TextWidget(
                text: 'Database - Firebase, MongoDb',
                textSize: 16,
                fontFamilyName: proxima,
                color: Colors.white,
              ),
              TextWidget(
                text: '70%',
                textSize: 16,
                color: Colors.white,
              ),
            ],
          ),
        ),
        const LinearProgressIndicator(
            value: 0.7,
            backgroundColor: Colors.white,
            valueColor: AlwaysStoppedAnimation<Color>(Color(0xff204190))),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              TextWidget(
                text: 'Tools & Services - Git, GitHub, Postman',
                textSize: 16,
                fontFamilyName: proxima,
                color: Colors.white,
              ),
              TextWidget(
                text: '75%',
                textSize: 16,
                color: Colors.white,
              ),
            ],
          ),
        ),
        const LinearProgressIndicator(
            value: 0.75,
            backgroundColor: Colors.white,
            valueColor: AlwaysStoppedAnimation<Color>(Color(0xff204190)))
      ],
    );
  }
}