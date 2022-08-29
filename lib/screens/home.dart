import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_nepal/screens/all_foods.dart';
import '../model/food_items_modes.dart';
import '../widgets/bold_text.dart';
import '../widgets/horizontal_text.dart';
import '../widgets/small_container.dart';
import 'food_details.dart';

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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Food Delivery App',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/notifications');
                  },
                  child: const Icon(
                    Icons.notification_add,
                    size: 30,
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 1, bottom: 1),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: const Color(0xFFe9eaec),
                      borderRadius: BorderRadius.circular(15)),
                  child: TextField(
                    cursorColor: const Color(0xFF000000),
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
              const SizedBox(
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
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.only(left: 10),
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
                  child: Container(child: const HorizontalText(text: 'Restaurents')),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/burger_house');
                    },
                    child: const HorizontalText(text: 'Burger House')),
                const SizedBox(width: 20),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/cafe');
                    },
                    child: const HorizontalText(text: 'Cafe')),
                const SizedBox(width: 20),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/kfc');
                    },
                    child: const HorizontalText(text: 'Kfc')),
              ],
            ),
          ),
        ),
        Row(
          children: [
            const BoldText(text: 'Nearby Foods'),
            const SizedBox(
              width: 200,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AllFoods()),
                  );
                },
                child: const Text('See All ')),
            const Icon(
              Icons.forward_sharp,
              color: Colors.blue,
              size: 15,
            )
          ],
        ),
        const SizedBox(
          height: 2,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SmallContainer(),
            ],
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const BoldText(text: 'Popular Foods'),
            const SizedBox(
              width: 200,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AllFoods()),
                  );
                },
                child: const Text('See All ')),
            const Icon(
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
                const SmallContainer(),
              ],
            ),
          ),
        ),
        const BoldText(text: 'Special Offers'),
        Container(
          height: 420,
          child: GridView.builder(
            physics: const ScrollPhysics(),
            itemCount: foodItems.length,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 220,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            itemBuilder: (BuildContext ctx, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FoodDetails(
                              foods: foodItems[index],
                            )),
                  );
                },
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: foodItems[index].photo,
                          ),
                          Positioned(
                            // The Positioned widget is used to position the text inside the Stack widget
                            bottom: 0,
                            right: 0,

                            child: Column(
                              children: [
                                Container(
                                  // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                                  width: 150,
                                  height: 25,
                                  color: Colors.black45,
                                  padding: const EdgeInsets.all(0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        foodItems[index].name,
                                        style: const TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        foodItems[index].price,
                                        style: const TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          decoration:
                                              TextDecoration.lineThrough,
                                          decorationColor: Colors.red,
                                          decorationThickness: 3,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                                  width: 150,
                                  height: 25,
                                  color: Colors.black45,
                                  padding: const EdgeInsets.all(0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        foodItems[index].name,
                                        style: const TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        foodItems[index].price,
                                        style: const TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 120,
                      color: Colors.black12,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(foodItems[index].location),
                          const SizedBox(width: 8),
                          Row(
                            children: [
                              const Icon(Icons.access_time_rounded,
                                  color: Colors.red, size: 16),
                              Text(foodItems[index].time),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ]),
    )));
  }
}
