import 'package:flutter/material.dart';
import 'package:food_delivery_nepal/widgets/bold_text.dart';

class Cafe extends StatelessWidget {
  const Cafe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            BoldText(text: 'Cafe Items'),
          ]),
        ),
      ),
    );
  }
}
