import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final double textSize;
  final EdgeInsets padding;

  final Color color;
  final String fontFamilyName;
  final Color backgroundColor;
  final FontWeight fontWeight;
  final TextAlign textAlign;

  const TextWidget(
      {Key? key,
      required this.text,
      this.textSize = 12,
      this.padding = const EdgeInsets.all(0.0),
      this.color = Colors.black,
      this.fontFamilyName = 'roboto',
      this.fontWeight = FontWeight.normal,
      this.backgroundColor = Colors.transparent,
      this.textAlign = TextAlign.start})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      padding: padding,
      child: Flexible(
        child: Text(
          text,
          style: TextStyle(
              fontSize: textSize,
              color: color,
              fontWeight: fontWeight,
              fontFamily: fontFamilyName),
          textAlign: textAlign,
        ),
      ),
    );
  }
}
