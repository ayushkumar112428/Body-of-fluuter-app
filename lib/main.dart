import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_project_start_base_05/Screens/home_screens.dart';
import 'package:flutter_project_start_base_05/Screens/profile_screens.dart';
import 'package:flutter_project_start_base_05/Screens/NotificationScreen.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  // const myapp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My app", 
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/profile':(context) => Profile(),
        '/notification':(context) => NotificationScreen(),
      },
    );
  }
}



// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);
//   @override
//   State<Home> createState() => _HomeState();
// }
// class _HomeState extends State<Home> {
//   int _selctedItem = 0;
//   void _onTapItem(int index) {
//     setState(() {
//       _selctedItem = index;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "My App ",
//           style: TextStyle(fontFamily: "Merriweather"),
//         ),
//         centerTitle: true, // title is center.
//         backgroundColor: Color.fromARGB(255, 73, 133, 237),
//       ),
//       body: Center(
//         child: Text(
//           "hello world ! $_selctedItem",
//           style: TextStyle(fontSize: 20),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//           BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
//           BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline), label: "add"),
//           BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "like"),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
//         ],
//         currentIndex: _selctedItem, //012345..
//         onTap: _onTapItem,
//         selectedFontSize: 15,
//         selectedItemColor: Colors.blue,
//       ),
//     );
//   }
// }


// Row & Column ->> Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,  //LAFT BAJUTHI START thay //right bajuthithay END.
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         textDirection: TextDirection.rtl,
//         children: <Widget>[
//           Expanded(
//             flex: 3,
//             child: Container(
//               decoration: BoxDecoration(color: Colors.black),
//               child: Text(
//                 "1. nnn ohoojoishoooijo oh ohoihowhoew",
//                 style: TextStyle(fontSize: 20, color: Colors.white),
//               ),
//               // margin: EdgeInsets.all(20),
//               padding: EdgeInsets.all(20),
//             ),
//           ),
//           Expanded(
//             flex: 2,
//             child: Container(
//               decoration: BoxDecoration(color: Colors.blue),
//               child: Text(
//                 "2",
//                 style: TextStyle(fontSize: 20, color: Colors.white),
//               ),
//               // margin: EdgeInsets.all(20),
//               padding: EdgeInsets.all(20),
//             ),
//           ),
//           Expanded(
//             flex: 2,
//             child: Container(
//               decoration: BoxDecoration(color: Colors.red),
//               child: Text(
//                 "3",
//                 style: TextStyle(fontSize: 20, color: Colors.white),
//               ),
//               // margin: EdgeInsets.all(20),
//               padding: EdgeInsets.all(20),
//             ),
//           ),
//         ],
//       ),

