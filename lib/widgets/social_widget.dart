import 'dart:js' as js;

import 'package:flutter/material.dart';

class SocialWidget extends StatelessWidget {
  const SocialWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          color: Colors.black,
          icon: Image.asset('assets/icons/linkedin.webp'),
          onPressed: () {
            js.context.callMethod("open",
                ["https://www.linkedin.com/in/namitsahu/"]);
          },
          iconSize: 10.0,
        ),
        const SizedBox(
          width: 20.0,
        ),
        IconButton(
          color: Colors.black,
          icon: Image.asset('assets/icons/facebook.webp'),
          onPressed: () {
            js.context.callMethod(
                "open", ["https://www.facebook.com/Namit.sahu.710"]);
          },
          iconSize: 10.0,
        ),
        const SizedBox(
          width: 20.0,
        ),
        IconButton(
          color: Colors.black,
          icon: Image.asset('assets/icons/instagram.webp'),
          onPressed: () {
            js.context.callMethod(
                "open", ["https://www.instagram.com/namittsahu/"]);
          },
          iconSize: 10.0,
        ),
      ],
    );
  }
}