import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_nepal/widgets/horizontal_text.dart';

import '../widgets/profile_bottom_long_card.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: 15, top: 20, right: 15, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/home');
                      },
                      child: Container(
                        child: SvgPicture.asset(
                          'assets/backarrow.svg',
                        ),
                      ),
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SvgPicture.asset('assets/feather_edit.svg')
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRN7jyUIfCCuO6Z0JO4jnqc-yGblABOGHFB4A&usqp=CAU'),
                  maxRadius: 50,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Pralhad Chualagin',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              SizedBox(
                height: 10,
              ),
              NormalText(text: 'Pralhadc1@gmail.com'),
              SizedBox(
                height: 10,
              ),
              NormalText(text: '9813575860'),
              // ElevatedButton(
              //   onPressed: () {},
              //   child: Text('Edit Profile'),
              // ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ProfileLongCard(
                        image: SvgPicture.asset('assets/location_user.svg'),
                        text: 'Delivery address: Thali'),
                    ProfileLongCard(
                        image: SvgPicture.asset('assets/location_user.svg'),
                        text: 'Order History'),
                    ProfileLongCard(
                        image: SvgPicture.asset('assets/location_user.svg'),
                        text: 'Favorite'),
                    ProfileLongCard(
                        image: SvgPicture.asset('assets/sign-out.svg'),
                        text: 'Sign out'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NormalText extends StatelessWidget {
  final String text;
  const NormalText({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 17),
    );
  }
}
