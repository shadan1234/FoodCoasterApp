import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class Pages extends StatefulWidget {
  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  final databaseRef = FirebaseDatabase.instance.ref();
  late String total;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,

      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image:AssetImage('images/dc.webp'),
                fit: BoxFit.cover
            )
        ),
        child: StreamBuilder(
          stream: databaseRef.child('orders').orderByKey().limitToLast(1).onChildAdded,
          builder: (BuildContext context, AsyncSnapshot<DatabaseEvent> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }

            if (snapshot.hasError) {
              return Text("Error: ${snapshot.error}");
            }

            if (!snapshot.hasData || snapshot.data == null) {
              return Text("No data available");
            }

            DataSnapshot? latestKeySnapshot = snapshot.data?.snapshot;

            List<Widget> itemList = [];

            if (latestKeySnapshot?.value is Map) {
              Map<dynamic, dynamic> children = latestKeySnapshot!.value as Map;
              children.forEach((key, value) {
                if (value != null && value['amount'] != null && value['price'] != null && value['title'] != null) {
                  itemList.add(
                    ListTile(
                      leading: Icon(Icons.check_circle, color: Colors.green),
                      title: Text(value['amount'].toString(),style: TextStyle(color: Colors.white),),
                      subtitle: Text(value['price'].toString(),style: TextStyle(color: Colors.white),),
                      trailing: Text(value['title'].toString(),style: TextStyle(color: Colors.white),),
                    ),
                  );
                }
              });
            } else if (latestKeySnapshot?.value is List) {
              Object? children = latestKeySnapshot!.value;
              (children as List).forEach((value) {
                if (value != null && value['amount'] != null && value['price'] != null && value['title'] != null) {
                  itemList.add(
                    ListTile(
                      leading: Icon(Icons.check_circle, color: Colors.green),
                      title: Text(value['amount'].toString(),style: TextStyle(color: Colors.white),),
                      subtitle: Text(value['price'].toString(),style: TextStyle(color: Colors.white),),
                      trailing: Text(value['title'].toString(),style: TextStyle(color: Colors.white),),
                    ),

                  );
                  total=value['total'].toString();
                }
              });
            }


            return Column(
              children: [
                Expanded(
                  child: ListView(
                    children: itemList,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(18),
                  color: Colors.black26,
                  child: Text("Total price =$total",style: TextStyle(color: Colors.white),),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}


// Opacity(
// opacity: 0.7,
// child: Container(
// padding: EdgeInsets.only(left: 30,top: 30),
// // color: Colors.black,
// child: SafeArea(
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text('Butter Chicken   -    250',style: TextStyle(fontSize: 30,color: Colors.white),),
// SizedBox(height: 15,),
// Text('Paneer Kadhai   -   400 ',style: TextStyle(fontSize: 30,color: Colors.white),),
// SizedBox(height: 15,),
// Text('Hyderabadi Chicken-300',style: TextStyle(fontSize: 30,color: Colors.white)),
// SizedBox(height: 15,),
// ],
// ),
// ),
// ),
// ),
