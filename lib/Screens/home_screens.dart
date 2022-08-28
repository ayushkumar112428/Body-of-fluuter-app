import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_project_start_base_05/Screens/profile_screens.dart';
import 'package:flutter_project_start_base_05/widgets/drewer.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selctedItem = 0;

  void _onTapItem(int index) {
    setState(() {
      _selctedItem = index;
    });
    if (index == 4) {
      // Navigator.pushNamed(context, '/profile');
      // Navigator.pushReplacementNamed(context, '/profile',
      // arguments: {
      //   'name':'Ayushkumar.','email':'ayushkumar@gmail.com'
      // });

      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Profile(),
            settings: RouteSettings(arguments: {
              'name': 'Ayushkumar.',
              'email': 'ayushkumar@gmail.com'
            }),
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          "My App ",
          style: TextStyle(fontFamily: "Merriweather"),
        ),
        centerTitle: true, // title is center.
        backgroundColor: Color.fromARGB(255, 73, 133, 237),

        actions: <Widget>[
          Stack(
            children: <Widget>[
             IconButton(
              onPressed: () {
              Navigator.pushNamed(context, '/notification');
              },
            icon: Icon(Icons.notifications),
            iconSize: 30,
          ),

          Positioned(
            top: 5,
            bottom: 28,
            right: 4,
            child: Container(
              decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.red),
            child: Text("10",style: TextStyle(fontSize: 13),),
            alignment: Alignment.center,
          )),
        ],
        )
        ],
      ),

      drawer: DrawerScreen(),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 5,
              margin: EdgeInsets.all(15),
              // color: Colors.white12,
              child: InkWell(
                onTap: () => {
                  print("card click.")
                },
                splashColor: Colors.blue.withAlpha(45),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      // leading: Icon(Icons.ac_unit,color: Colors.blue[400],),
                      leading: FlutterLogo(size: 40,),
                      title: Text("Title",style: TextStyle(fontFamily: "Merriweather"),),
                      subtitle: Text("Sub title Sub title Sub title Sub title Sub title Sub title Sub title Sub title Sub title"),
                      isThreeLine: true, //sub line ni niche spase male.
                      // dense: true, //line begu bhegu kare
                      trailing: Icon(Icons.delete),
                    ),
                    Image.asset('assets/images/1.jpg',
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            
            Card(
              elevation: 5,
              margin: EdgeInsets.all(15),
              // color: Colors.white12,
              child: InkWell(
                onTap: () => {
                  print("card click.")
                },
                splashColor: Colors.blue.withAlpha(45),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      // leading: Icon(Icons.ac_unit,color: Colors.blue[400],),
                      leading: FlutterLogo(size: 40,),
                      title: Text("Title",style: TextStyle(fontFamily: "Merriweather"),),
                      subtitle: Text("Sub title Sub title Sub title Sub title Sub title Sub title Sub title Sub title Sub title"),
                      isThreeLine: true, //sub line ni niche spase male.
                      // dense: true, //line begu bhegu kare
                      trailing: Icon(Icons.delete),
                    ),
                    Image.asset('assets/images/2.jpg',
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
      
            Card(
              elevation: 5,
              margin: EdgeInsets.all(15),
              // color: Colors.white12,
              child: InkWell(
                onTap: () => {
                  print("card click.")
                },
                splashColor: Colors.blue.withAlpha(45),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      // leading: Icon(Icons.ac_unit,color: Colors.blue[400],),
                      leading: FlutterLogo(size: 40,),
                      title: Text("Title",style: TextStyle(fontFamily: "Merriweather"),),
                      subtitle: Text("Sub title Sub title Sub title Sub title Sub title Sub title Sub title Sub title Sub title"),
                      isThreeLine: true, //sub line ni niche spase male.
                      // dense: true, //line begu bhegu kare
                      trailing: Icon(Icons.delete),
                    ),
                    Image.asset('assets/images/1.jpg',
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
      
            Card(
              elevation: 5,
              margin: EdgeInsets.all(15),
              // color: Colors.white12,
              child: InkWell(
                onTap: () => {
                  print("card click.")
                },
                splashColor: Colors.blue.withAlpha(45),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      // leading: Icon(Icons.ac_unit,color: Colors.blue[400],),
                      leading: FlutterLogo(size: 40,),
                      title: Text("Title",style: TextStyle(fontFamily: "Merriweather"),),
                      subtitle: Text("Sub title Sub title Sub title Sub title Sub title Sub title Sub title Sub title Sub title"),
                      isThreeLine: true, //sub line ni niche spase male.
                      // dense: true, //line begu bhegu kare
                      trailing: Icon(Icons.delete),
                    ),
                    Image.asset('assets/images/2.jpg',
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),


      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline), label: "add"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "like"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        currentIndex: _selctedItem, //012345..
        onTap: _onTapItem,
        selectedFontSize: 15,
        selectedItemColor: Colors.blue,
      ),
    );
  }
}
