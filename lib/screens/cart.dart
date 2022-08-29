import 'package:flutter/material.dart';
import 'package:food_delivery_nepal/widgets/bold_text.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Center(child: BoldText(text: 'My cart lists')),
            Container(
              height: 50,
              color: Colors.black12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BoldText(text: 'Items'),
                  Text(
                    'Add more items + ',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
            ),
            Text(
              '1khana set , 2dal , 1vat ',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      maxRadius: 15,
                      child: Icon(Icons.remove),
                    ),
                    SizedBox(width: 10),
                    Text(
                      '0',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(width: 10),
                    CircleAvatar(
                      maxRadius: 15,
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
                Text('Rs. 100'),
              ],
            ),
            SizedBox(height: 50),
            Divider(height: 5, color: Colors.grey, thickness: 0.5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BoldText(text: 'TOTAL  PRICE'),
                BoldText(text: '1500'),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
