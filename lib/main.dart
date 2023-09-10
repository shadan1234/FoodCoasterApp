

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';



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
                Card(

                      color: Color(0xff144C32),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            child: Image.asset('images/Calorie.jpeg'),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Calorie",
                              style: TextStyle(fontSize: 30, color: Colors.white70),
                            ),
                          ),
                        ],
                      ),

                ),

              SizedBox(height: 20),


              SizedBox(height: 20),
              Card(

                color: Color(0xff144C32),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      child: Image.asset('images/Calorie.jpeg'),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Calorie",
                        style: TextStyle(fontSize: 30, color: Colors.white70),
                      ),
                    ),
                  ],
                ),

              ),
              SizedBox(height: 20),
              Card(

                color: Color(0xff144C32),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      child: Image.asset('images/Calorie.jpeg'),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Calorie",
                        style: TextStyle(fontSize: 30, color: Colors.white70),
                      ),
                    ),
                  ],
                ),

              ),
              SizedBox(height: 20),
              Card(

                color: Color(0xff144C32),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      child: Image.asset('images/Calorie.jpeg'),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Calorie",
                        style: TextStyle(fontSize: 30, color: Colors.white70),
                      ),
                    ),
                  ],
                ),

              ),
              SizedBox(height: 20),

            ],
          ),
        ),
      ),
    );
  }
}
