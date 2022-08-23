import 'package:flutter/material.dart';
import 'package:food_delivery_nepal/model/food_items_modes.dart';

import '../widgets/bold_text.dart';

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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '<',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 35),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
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
                      SizedBox(
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
                    style: TextStyle(
                        color: Colors.teal,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
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
                  SizedBox(height: 15),
                  Text(
                    foods.price,
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'This is mo:mo which has jhol and is it very testay you will get 10 pices of it.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(height: 170),
                  Container(
                      width: 350,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.teal,
                      ),
                      child: Center(
                        child: Text(
                          'Add to cart',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ],
              );
            }),
      ),
    );
  }
}
