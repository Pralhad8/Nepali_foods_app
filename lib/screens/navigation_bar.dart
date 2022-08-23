import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
    Profile(),
    // RequestBlood(),
    // Search(),
    // Profile(),
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
        floatingActionButton: Container(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                bottom: 45,
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0XFFFF2156),
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      )),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    // child: SvgPicture.asset(
                    //   'assets/blood_group.svg',
                    //   color: Colors.white,
                    // ),
                  ),
                ),
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Material(
          borderRadius: BorderRadius.circular(30),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
            child: Container(
              height: 60,
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      MaterialButton(
                        minWidth: 40,
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
                            Icon(Icons.home),
                            // SvgPicture.asset(
                            //   'assets/navigator_home.svg',
                            //   color:
                            //       currentTab == 0 ? Colors.red : Colors.grey,
                            // ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: currentTab == 0
                                  ? CircleAvatar(
                                      radius: 3,
                                      backgroundColor: Colors.red,
                                    )
                                  : CircleAvatar(
                                      radius: 0,
                                    ),
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen =
                                HomePage(); // if user taps on this dashboard tab will be active
                            currentTab = 1;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.search),
                            // SvgPicture.asset(
                            //   'assets/search.svg',
                            //   color:
                            //       currentTab == 1 ? Colors.red : Colors.grey,
                            // ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: currentTab == 1
                                  ? CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Colors.red,
                                    )
                                  : CircleAvatar(
                                      radius: 0,
                                    ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),

                  // Right Tab bar icons

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen =
                                HomePage(); // if user taps on this home tab will be active
                            currentTab = 2;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.notifications),
                            // SvgPicture.asset(
                            //   'assets/navigator_line_chart.svg',
                            //   color:
                            //       currentTab == 2 ? Colors.red : Colors.grey,
                            // ),
                            SizedBox(height: 5),
                            Container(
                              child: currentTab == 2
                                  ? CircleAvatar(
                                      radius: 3,
                                      backgroundColor: Colors.red,
                                    )
                                  : CircleAvatar(
                                      radius: 0,
                                    ),
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen =
                                Profile(); // if user taps on this dashboard tab will be active
                            currentTab = 3;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.person),

                            // SvgPicture.asset(
                            //   'assets/navigator_user.svg',
                            //   color:
                            //       currentTab == 3 ? Colors.red : Colors.grey,
                            // ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: currentTab == 3
                                  ? CircleAvatar(
                                      radius: 3,
                                      backgroundColor: Colors.red,
                                    )
                                  : CircleAvatar(
                                      radius: 0,
                                    ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
