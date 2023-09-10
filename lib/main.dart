

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foodie/pages.dart';

import 'components/card.dart';
// import 'package:food_coaster/components/card.dart';
// import 'package:food_coaster/khana/Hexagon.dart';
// import 'package:food_coaster/khana/LT6.dart';
// import 'package:food_coaster/khana/Rengol.dart';
// import 'khana/Calorie.dart';
// import 'khana/AgainEat.dart';
// import 'khana/DosaPlaza.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/background.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
          constraints: BoxConstraints.expand(),
          child: ListView(
            children: [
              Center(
                child: Text(
                  '𝔉ℭ',
                  style: TextStyle(fontSize: 60, fontWeight: FontWeight.w800,color: Colors.white),
                ),
              ),
              SizedBox(height: 20),
              Builder(
                builder: (BuildContext context) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return Pages(); // Create an instance of the Calorie class
                        }),
                      );
                    },
                    child: CardWidget(restaurent: 'Calorie', imag_text: 'images/Calorie.jpeg'),
                  );
                },
              ),

              SizedBox(height: 20),
              Builder(
                builder: (BuildContext context) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return Pages(); // Create an instance of the Calorie class
                        }),
                      );
                    },
                    child: CardWidget(restaurent: 'DosaPlaza', imag_text: 'images/DosaPlaza.jpeg'),
                  );
                },
              ),

              SizedBox(height: 20),
              Builder(
                builder: (BuildContext context) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return Pages(); // Create an instance of the Calorie class
                        }),
                      );
                    },
                    child: CardWidget(restaurent: 'AgainEat', imag_text: 'images/AgainEat.jpeg'),
                  );
                },
              ),
              SizedBox(height: 20),
              Builder(
                builder: (BuildContext context) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return Pages(); // Create an instance of the Calorie class
                        }),
                      );
                    },
                    child: CardWidget(restaurent: 'Hexagon', imag_text: 'images/Hexagon.jpeg'),
                  );
                },
              ),
              SizedBox(height: 20),
              Builder(
                builder: (BuildContext context) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return Pages(); // Create an instance of the Calorie class
                        }),
                      );
                    },
                    child: CardWidget(restaurent: 'Rengol', imag_text: 'images/Rengol.jpeg'),
                  );
                },
              ),
              SizedBox(height: 20),
              Builder(
                builder: (BuildContext context) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return Pages(); // Create an instance of the Calorie class
                        }),
                      );
                    },
                    child: CardWidget(restaurent: 'LT6', imag_text: 'images/LT6.jpeg'),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
