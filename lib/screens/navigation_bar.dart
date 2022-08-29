import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_nepal/screens/cart.dart';
import 'package:food_delivery_nepal/screens/favorite.dart';
import 'package:food_delivery_nepal/screens/home.dart';
import 'package:food_delivery_nepal/screens/profile.dart';

class BottomNavigationTabBar extends StatefulWidget {
  const BottomNavigationTabBar({Key? key}) : super(key: key);

  @override
  _BottomNavigationTabBarState createState() => _BottomNavigationTabBarState();
}

class _BottomNavigationTabBarState extends State<BottomNavigationTabBar> {
  // Properties & Variables needed

  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    const HomePage(),
    const Profile(),
    const Favorite(),
    const Cart(),
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomePage(); // Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageStorage(
          // ignore: sort_child_properties_last
          child: currentScreen,
          bucket: bucket,
        ),
        bottomNavigationBar: Material(
          borderRadius: BorderRadius.circular(30),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4), //color of shadow
                    spreadRadius: 5, //spread radius
                    blurRadius: 7, // blur radius
                    offset: const Offset(0, 2), // changes position of shadow
                    //first paramerter of offset is left-right
                    //second parameter is top to down
                  ),
                  //you can set more BoxShadow() here
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            currentScreen =
                                const HomePage(); // if user taps on this dashboard tab will be active
                            currentTab = 0;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            // Icon(
                            //   Icons.home,
                            //   color:
                            //       currentTab == 0 ? Colors.green : Colors.black,
                            // ),
                            SvgPicture.asset(
                              'assets/navigator_home.svg',
                              height: 22,
                              color: currentTab == 0 ? Colors.red : Colors.grey,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: currentTab == 0
                                  ? const CircleAvatar(
                                      radius: 0,
                                      backgroundColor: Colors.red,
                                    )
                                  : const CircleAvatar(
                                      radius: 0,
                                    ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 15),
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            currentScreen =
                                const Favorite(); // if user taps on this dashboard tab will be active
                            currentTab = 1;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.favorite_outline,
                              color: currentTab == 1 ? Colors.red : Colors.grey,
                            ),
                            // SvgPicture.asset(
                            //   'assets/search.svg',
                            //   color: currentTab == 1 ? Colors.red : Colors.grey,
                            // ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: currentTab == 1
                                  ? const CircleAvatar(
                                      radius: 0,
                                      backgroundColor: Colors.red,
                                    )
                                  : const CircleAvatar(
                                      radius: 0,
                                    ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 15),
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            currentScreen =
                                const Cart(); // if user taps on this dashboard tab will be active
                            currentTab = 2;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.card_giftcard,
                              color: currentTab == 2 ? Colors.red : Colors.grey,
                            ),
                            // SvgPicture.asset(
                            //   'assets/search.svg',
                            //   color: currentTab == 1 ? Colors.red : Colors.grey,
                            // ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: currentTab == 2
                                  ? const CircleAvatar(
                                      radius: 0,
                                      backgroundColor: Colors.red,
                                    )
                                  : const CircleAvatar(
                                      radius: 0,
                                    ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 15),
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            currentScreen =
                                const Profile(); // if user taps on this dashboard tab will be active
                            currentTab = 3;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.person_add_alt_1_outlined,
                              color: currentTab == 3 ? Colors.red : Colors.grey,
                            ),
                            // SvgPicture.asset(
                            //   'assets/search.svg',
                            //   color: currentTab == 1 ? Colors.red : Colors.grey,
                            // ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: currentTab == 1
                                  ? const CircleAvatar(
                                      radius: 0,
                                      backgroundColor: Colors.red,
                                    )
                                  : const CircleAvatar(
                                      radius: 0,
                                    ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  // Right Tab bar icons

                  // Row(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: <Widget>[
                  //     MaterialButton(
                  //       onPressed: () {
                  //         setState(() {
                  //           currentScreen =
                  //               HomePage(); // if user taps on this home tab will be active
                  //           currentTab = 2;
                  //         });
                  //       },
                  //       child: Column(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         crossAxisAlignment: CrossAxisAlignment.center,
                  //         children: <Widget>[
                  //           Icon(
                  //             Icons.notification_important_outlined,
                  //             size: 25,
                  //             color: currentTab == 2 ? Colors.red : Colors.grey,
                  //           ),
                  //           // SvgPicture.asset(
                  //           //   'assets/navigator_line_chart.svg',
                  //           //   color:
                  //           //       currentTab == 2 ? Colors.red : Colors.grey,
                  //           // ),
                  //           SizedBox(height: 5),
                  //           Container(
                  //             child: currentTab == 2
                  //                 ? CircleAvatar(
                  //                     radius: 0,
                  //                     backgroundColor: Colors.red,
                  //                   )
                  //                 : CircleAvatar(
                  //                     radius: 0,
                  //                   ),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //     MaterialButton(
                  //       onPressed: () {
                  //         setState(() {
                  //           currentScreen =
                  //               Profile(); // if user taps on this dashboard tab will be active
                  //           currentTab = 3;
                  //         });
                  //       },
                  //       child: Column(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: <Widget>[
                  //           Icon(
                  //             Icons.person_add_alt_outlined,
                  //             color: currentTab == 3 ? Colors.red : Colors.grey,
                  //           ),

                  //           // SvgPicture.asset(
                  //           //   'assets/navigator_user.svg',
                  //           //   color:
                  //           //       currentTab == 3 ? Colors.red : Colors.grey,
                  //           // ),
                  //           SizedBox(
                  //             height: 5,
                  //           ),
                  //           Container(
                  //             child: currentTab == 3
                  //                 ? CircleAvatar(
                  //                     radius: 0,
                  //                     backgroundColor: Colors.red,
                  //                   )
                  //                 : CircleAvatar(
                  //                     radius: 0,
                  //                   ),
                  //           ),
                  //         ],
                  //       ),
                  //     )
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
