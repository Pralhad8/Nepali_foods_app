import 'package:flutter/material.dart';
import 'package:food_delivery_nepal/widgets/bold_text.dart';

class NotificationsAlert extends StatelessWidget {
  const NotificationsAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text('Notification'),
          SizedBox(height: 20),
          Container(
            width: 400,
            height: 100,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BoldText(text: '1.'),
                Card(
                  child: Column(
                    children: [
                      Text('1 plate mo:mo, 2 plate chowmin.   Rs. 500  '),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('New order by '),
                          Text('Ram chaudhary',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.blue)),
                          SizedBox(width: 10),
                          Icon(Icons.map),
                          Text(
                            'View on Map',
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 80,
                              height: 30,
                              color: Colors.green,
                              child: Text(
                                'Accept',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              width: 80,
                              height: 30,
                              color: Colors.red,
                              child: Text(
                                'Decline',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    ));
  }
}
