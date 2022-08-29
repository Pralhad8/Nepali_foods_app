import 'package:flutter/material.dart';
import 'package:food_delivery_nepal/model/food_items_modes.dart';
import 'food_details.dart';

class AllFoods extends StatelessWidget {
  const AllFoods({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 8, top: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    '<',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                  SizedBox(width: 100),
                  Text(
                    'All foods Items',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: foodItems.length,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
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

                                  child: Container(
                                    // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                                    width: 150,
                                    height: 25,
                                    color: Colors.black45,
                                    padding: const EdgeInsets.all(0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
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
            ],
          ),
        ),
      ),
    );
  }
}
