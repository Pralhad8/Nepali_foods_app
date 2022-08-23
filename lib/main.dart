import 'package:flutter/material.dart';
import 'package:food_delivery_nepal/screens/burger_house_items.dart';
import 'package:food_delivery_nepal/screens/cafe_items.dart';
import 'package:food_delivery_nepal/screens/kfc_items.dart';
import 'package:food_delivery_nepal/screens/login.dart';
import 'package:food_delivery_nepal/screens/resturents_items.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/forgot_password.dart';
import 'screens/home.dart';
import 'screens/navigation_bar.dart';
import 'screens/profile.dart';
import 'screens/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/homeTabBar': (context) => const BottomNavigationTabBar(),
        '/login': (context) => const Login(),
        '/register': (context) => const Register(),
        '/forgotPassword': (context) => const ForgotPassword(),
        '/home': (context) => const HomePage(),
        '/profile': (context) => const Profile(),
        '/resturents': (context) => const Resturents(),
        '/burger_house': (context) => const BurgerHouse(),
        '/cafe': (context) => const Cafe(),
        '/kfc': (context) => const Kfc(),
        // '/food_details': (context) =>  FoodDetails(foods: foodItems[index].name),
      },
      title: 'Food Delivery App',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: BottomNavigationTabBar(),
    );
  }
}
