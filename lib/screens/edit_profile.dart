import 'package:flutter/material.dart';
import 'package:food_delivery_nepal/widgets/long_button.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    '<',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                  SizedBox(width: 60),
                  Text(
                    'Edit Profile',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRN7jyUIfCCuO6Z0JO4jnqc-yGblABOGHFB4A&usqp=CAU'),
                  maxRadius: 50,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(40.0),
                      ),
                      borderSide: BorderSide(color: Colors.black, width: 1),
                    ),
                    contentPadding:
                        EdgeInsets.only(left: 25.0, top: 10.0, bottom: 15.0),
                    hintText: "Pralhad",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(40.0),
                      ),
                      borderSide: BorderSide(color: Colors.black45, width: 0.5),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(40.0),
                      ),
                      borderSide: BorderSide(color: Colors.black, width: 1),
                    ),
                    contentPadding:
                        EdgeInsets.only(left: 25.0, top: 10.0, bottom: 15.0),
                    hintText: "Chaulagain",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      borderSide: BorderSide(color: Colors.black45, width: 0.5),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(40.0),
                      ),
                      borderSide: BorderSide(color: Colors.black, width: 1),
                    ),
                    contentPadding:
                        EdgeInsets.only(left: 25.0, top: 10.0, bottom: 15.0),
                    hintText: "9813575860",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(40.0),
                      ),
                      borderSide: BorderSide(color: Colors.black45, width: 0.5),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              LongButton(
                  borderColor: Colors.red,
                  fillColor: Colors.red,
                  textColor: Colors.black,
                  text: 'Save',
                  onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
