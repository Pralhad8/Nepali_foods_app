import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_nepal/screens/all_foods.dart';

import '../widgets/bold_text.dart';
import '../widgets/horizontal_text.dart';
import '../widgets/small_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Food Delivery App',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        SizedBox(height: 5),
        Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 1, bottom: 1),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xFFe9eaec),
                      borderRadius: BorderRadius.circular(15)),
                  child: TextField(
                    cursorColor: Color(0xFF000000),
                    // controller: _searchController,
                    decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SvgPicture.asset(
                            'assets/search.svg',
                            width: 10,
                            height: 10,
                          ),
                        ),
                        hintText: "What would you like to eat?",
                        border: InputBorder.none),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              // SvgPicture.asset('assets/search.svg'),
              Container(
                width: 50,
                height: 50,
                color: Colors.red,
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/resturents');
                  },
                  child: Container(
                     
                      child: HorizontalText(text: 'Restaurents')),
                ),
                SizedBox(width: 20),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/burger_house');
                    },
                    child: HorizontalText(text: 'Burger House')),
                SizedBox(width: 20),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/cafe');
                    },
                    child: HorizontalText(text: 'Cafe')),
                SizedBox(width: 20),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/kfc');
                    },
                    child: HorizontalText(text: 'Kfc')),
              ],
            ),
          ),
        ),
        Row(
          children: [
            BoldText(text: 'Nearby Foods'),
            SizedBox(
              width: 200,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AllFoods()),
                  );
                },
                child: Text('See All ')),
            Icon(
              Icons.forward_sharp,
              color: Colors.blue,
              size: 15,
            )
          ],
        ),
        SizedBox(
          height: 2,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SmallContainer(),
            ],
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BoldText(text: 'Popular Foods'),
            SizedBox(
              width: 200,
            ),
            Text('See All '),
            Icon(
              Icons.forward_sharp,
              color: Colors.blue,
              size: 15,
            )
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmallContainer(),
              ],
            ),
          ),
        ),
        BoldText(text: 'Top Treding foods'),
        Container(
          height: 420,
          child: GridView.count(
            crossAxisCount: 2,
            physics: ScrollPhysics(),
            padding: const EdgeInsets.only(left: 10, right: 10),
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, bottom: 30),
                child: Container(
                  height: 15,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, bottom: 30),
                child: Container(
                  height: 15,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 15,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ],
          ),
        ),
      ]),
    )));
  }
}
