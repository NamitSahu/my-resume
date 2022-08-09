import 'package:flutter/material.dart';

import '../utils/constants.dart';
import 'text_widget.dart';

class IntroWidget extends StatelessWidget {
  const IntroWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TextWidget(
          fontFamilyName: proximaBold,
          color: Color(0xff61AAF1),
          textSize: 28,
          text: 'Namit Kumar Sahu',
        ),
        TextWidget(
            padding: EdgeInsets.only(top: 10),
            text: 'Android Developer (Flutter)',
            fontFamilyName: proxima,
            textSize: 20),
        TextWidget(
          padding: EdgeInsets.only(top: 20),
          text:
              'A Flutter Developer who is currently pursing in college. Looking for a challenging role in a reputable organization to improve my technical and learn something new and I particularly enjoy working as a part of a team.',
          textSize: 16,
        ),
      ],
    );
  }
}
