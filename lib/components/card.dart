import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  // const Card({Key? key}) : super(key: key);
  String restaurent;
  String imag_text;
  CardWidget({required this.imag_text,required this.restaurent});
  @override
  Widget build(BuildContext context) {
    return     Card(
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
            child: Image.asset(imag_text),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              restaurent,
              style: TextStyle(fontSize: 30, color: Colors.white70),
            ),
          ),
        ],
      ),
    );
  }
}
