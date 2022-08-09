import 'package:flutter/material.dart';

import '../utils/constants.dart';
import 'text_widget.dart';


class LanguagesWidget extends StatelessWidget {
  const LanguagesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TextWidget(
          text: 'Languages',
          fontFamilyName: proxima,
          textSize: 28,
          color: Colors.black,
        ),
        TextWidget(
          text: '•  CPP',
          fontFamilyName: proxima,
          padding:  EdgeInsets.only(top: 20),
          textSize: 16,
          color: Colors.black,
        ),
        TextWidget(
          text: '•  Dart',
          fontFamilyName: proxima,
          padding:  EdgeInsets.only(top: 20, ),
          textSize: 16,
          color: Colors.black,
        ),
        TextWidget(
          text: '•  Kotlin',
          fontFamilyName: proxima,
          padding: EdgeInsets.only(top: 20,bottom: 25),
          textSize: 16,
          color: Colors.black,
        ),
        // TextWidget(
        //   text: 'Languages',
        //   fontFamilyName: proxima,
        //   textSize: 28,
        //   color: Colors.black,
        // ),
        TextWidget(
          text: 'Spoken Languages',
          fontFamilyName: proxima,
          textSize: 28,
          color: Colors.black,
        ),
        TextWidget(
          text: '•  Hindi',
          fontFamilyName: proxima,
          padding:  EdgeInsets.only(top: 20),
          textSize: 16,
          color: Colors.black,
        ),
        TextWidget(
          text: '•  English',
          fontFamilyName: proxima,
          padding:  EdgeInsets.only(top: 20, ),
          textSize: 16,
          color: Colors.black,
        ),
      ],
    );
  }
}
