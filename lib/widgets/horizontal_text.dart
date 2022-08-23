import 'package:flutter/material.dart';

class HorizontalText extends StatelessWidget {
  final text;
  const HorizontalText({required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
    );
  }
}
