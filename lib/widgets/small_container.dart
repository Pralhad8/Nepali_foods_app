import 'package:flutter/material.dart';
import 'package:food_delivery_nepal/model/food_items_modes.dart';
import 'package:food_delivery_nepal/screens/food_details.dart';

class SmallContainer extends StatelessWidget {
  const SmallContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return Padding(
      padding: const EdgeInsets.only(right: 0),
      child: Column(children: [
        Container(
          height: 170,
          width: 396,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodItems.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FoodDetails(
                                    foods: foodItems[index],
                                  )),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),

                              offset: const Offset(
                                  1, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15)),
                              child: foodItems[index].photo,
                            ),
                            Positioned(
                              // The Positioned widget is used to position the text inside the Stack widget
                              bottom: 0,
                              right: 10,

                              child: Container(
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
                                    const SizedBox(width: 10),
                                    Text(
                                      foodItems[index].price,
                                      style: const TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
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
                );
              }),
        ),
      ]),
    );
  }
}
