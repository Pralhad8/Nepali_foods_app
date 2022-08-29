import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileLongCard extends StatelessWidget {
  final SvgPicture image;
  final String text;

  const ProfileLongCard({
    required this.image,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 55,
        width: 350,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1), //color of shadow
              spreadRadius: 5, //spread radius
              blurRadius: 7, // blur radius
              offset: const Offset(0, 2), // changes position of shadow
              //first paramerter of offset is left-right
              //second parameter is top to down
            ),
            //you can set more BoxShadow() here
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Row(children: [
            image,
            const SizedBox(
              width: 10,
            ),
            Text(text),
          ]),
        ),
      ),
    );
  }
}
