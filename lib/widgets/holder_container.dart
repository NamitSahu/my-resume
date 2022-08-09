import 'package:flutter/material.dart';

class HolderContainer extends StatelessWidget {
  final Widget widget;
  final Color color;

  const HolderContainer({Key? key, required this.widget, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: color, borderRadius: const BorderRadius.all(Radius.circular(10))),
      margin: const EdgeInsets.only(left: 32, right: 32),
      padding: const EdgeInsets.all(32),
      child: widget,
    );
  }
}