import 'package:flutter/material.dart';
import 'package:food_delivery_nepal/widgets/bold_text.dart';
import '../model/food_items_modes.dart';
import 'food_details.dart';

class BurgerHouse extends StatelessWidget {
  const BurgerHouse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const BoldText(text: 'BurderHouse Items'),
            Expanded(
              child: ListView.builder(
                  itemCount: burgerHouseMenu.length,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FoodDetails(
                                          foods: burgerHouseMenu[index],
                                        )),
                              );
                            },
                            child: Container(
                              width: 350,
                              child: Card(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                            width: 50,
                                            height: 50,
                                            child: burgerHouseMenu[index].photo),
                                        const SizedBox(width: 20),
                                        Text(
                                          burgerHouseMenu[index].name.toString(),
                                          style: const TextStyle(
                                            fontSize: 20,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(right: 10),
                                      child: const Text(
                                        '>',
                                        style: TextStyle(fontSize: 25),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            )
          ]),
        ),
      ),
    );
  }
}
