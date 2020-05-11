import 'package:flutter/material.dart';
//import 'package:uiapp/Speisekarte.dart';
//import 'package:uiapp/Stundenplan.dart';
import './Startseite.dart';
import './Stundenplan.dart';
import './Persoenliches.dart';
import './ToDo.dart';
import './Elterngespraech.dart';
import './Speisekarte.dart';
import 'Elterngespraech.dart';
import 'Persoenliches.dart';



void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  int _selectedPage = 0;
  final _pageOptions = [
    HomePage(),
    Timetable(),
    Personal(),
    ToDO(),
    Meeting(),
    Food()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('ScHooL4.0',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w600,
                letterSpacing: 0.9,
                color: Colors.white,
              )),),
        body: _pageOptions[_selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey[300],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedPage,
          onTap: (int index) {
            setState(() {
              _selectedPage = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.today),
                title: Text('')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text('')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.assignment),
                title: Text('')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.perm_contact_calendar),
                title: Text('')
            ),

            BottomNavigationBarItem(
                icon: Icon(Icons.fastfood),
                title: Text('')
            ),
          ],
        ),
      ),
    );
  }
}


