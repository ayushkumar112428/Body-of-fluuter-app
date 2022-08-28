import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List _Notification = List<String>.generate(500, (index) => 'Notification $index');
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Notification"),

            // bottom: TabBar(tabs: <Widget>[
            //   Tab(icon: Icon(Icons.call_missed),
            //   text: 'Missed call',
            //   ),
            //   Tab(icon: Icon(Icons.call_received),
            //   text: 'Received',
            //   ),
            // ]),
          
          ),
          
          body: ListView.builder(
            itemCount: _Notification.length,
            itemBuilder: (context,index){
              return Card(
                child: ListTile(
                  leading: FlutterLogo(),
                  title: Text(_Notification[index],
                  style: TextStyle(fontSize: 20),
                  ),
                  trailing: Icon(Icons.delete),
                  ),
              );
            },
          ),
          
        ));
  }
}

// body -> body: TabBarView(children: <Widget>[
//         Center(child: Text('Missed Call Here',
//         style: TextStyle(fontSize: 25),),),
//         Center(child: Text('Recived Call Here',
//         style: TextStyle(fontSize: 25),)),
//       ]),

// body ->> ListView(
//             padding: EdgeInsets.all(10),
//             scrollDirection: Axis.vertical,
//             children: <Widget>[
//               Container(
//                 color: Colors.amber,
//                 height: 100,
//                 width: 100,
//                 child: Text(
//                   "hiiiiii",
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ),
//               Container(
//                 color: Colors.blue,
//                 height: 100,
//                 width: 100,
//                 child: Text(
//                   "hiiiiii",
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ),
//               Container(
//                 color: Colors.black,
//                 height: 100,
//                 width: 100,
//                 child: Text(
//                   "hiiiiii",
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ),
//               Container(
//                 color: Colors.red,
//                 height: 100,
//                 width: 100,
//                 child: Text(
//                   "hiiiiii",
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ),
//               Container(
//                 color: Colors.white,
//                 height: 100,
//                 width: 100,
//                 child: Text(
//                   "hiiiiii",
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ),
//               Container(
//                 color: Colors.brown,
//                 height: 100,
//                 width: 100,
//                 child: Text(
//                   "hiiiiii",
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ),
//               Container(
//                 color: Colors.green,
//                 height: 100,
//                 width: 100,
//                 child: Text(
//                   "hiiiiii",
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ),
//               Container(
//                 color: Colors.black,
//                 height: 100,
//                 width: 100,
//                 child: Text(
//                   "hiiiiii",
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ),
//               Container(
//                 color: Colors.amber,
//                 height: 100,
//                 child: Text(
//                   "hiiiiii",
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ),
//               Container(
//                 color: Colors.green,
//                 height: 100,
//                 child: Text(
//                   "hiiiiii",
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ),
//             ],
//           ),



