import 'package:flutter/material.dart';

import '../utils/constants.dart';
import 'text_widget.dart';


class ContactsWidget extends StatelessWidget {
  const ContactsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextWidget(
          text: 'Contact',
          fontFamilyName: proxima,
          textSize: 28,
          color: Colors.black,
        ),
        const SizedBox(
          height: 20,
        ),
        Row(children: const [
          Icon(Icons.place, size: 15),
          SizedBox(
            width: 10,
          ),
          Text(
            'Pragati Nagar, Risali, Bhilai\nChhattisgarh 490006',
            style: TextStyle(
              fontFamily: proxima,
              fontSize: 16,
              color: Colors.black,
            ),
          )
        ]),
        const SizedBox(
          height: 10,
        ),
        Row(children: const [
          Icon(
            Icons.phone,
            size: 15,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            '+91 7000 707 153',
            style: TextStyle(
              fontFamily: proxima,
              fontSize: 16,
              color: Colors.black,
            ),
          )
        ]),
        const SizedBox(
          height: 10,
        ),
        Row(children: const [
          Icon(
            Icons.mail,
            size: 15,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'namitkr.sahu@gmail.com',
            style: TextStyle(
              fontFamily: proxima,
              fontSize: 16,
              color: Colors.black,
            ),
          )
        ]),
      ],
    );
  }
}
