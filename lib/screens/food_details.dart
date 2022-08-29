import 'package:flutter/material.dart';
import 'package:food_delivery_nepal/model/food_items_modes.dart';


class FoodDetails extends StatelessWidget {
  final FoodItemsModel foods;
  const FoodDetails({Key? key, required this.foods}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '<',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 35),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 25),
                          child: const Icon(
                            Icons.shopping_bag_outlined,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.black12,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Flexible(child: Text(foods.companyName!)),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        color: Colors.black12,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Flexible(child: Text(foods.companyCategory!)),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    foods.name,
                    style: const TextStyle(
                        color: Colors.teal,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: foods.photo,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    foods.price,
                    style: const TextStyle(
                        color: Colors.red,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black12),
                        child: const Icon(Icons.favorite_border_outlined),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black12),
                        child: const Icon(Icons.share),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      foods.description!,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text('Quantity'),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 40,
                            height: 35,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                ),
                                color: Colors.blue),
                            child: const Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 0.5),
                          Container(
                            width: 40,
                            height: 35,
                            color: Colors.blue,
                            child: const Text(
                              '2',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(width: 0.5),
                          Container(
                            width: 40,
                            height: 35,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                                color: Colors.blue),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 100),
                  Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.teal,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Add to cart',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )),
                ],
              );
            }),
      ),
    );
  }
}
