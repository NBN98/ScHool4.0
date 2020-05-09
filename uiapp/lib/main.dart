import 'package:flutter/material.dart';
import 'package:uiapp/Speisekarte.dart';
import 'package:uiapp/Stundenplan.dart';
import './Startseite.dart';
import './Stundenplan.dart';
import './Persönliches.dart';
import './ToDo.dart';
import './Elterngespräch.dart';
import './Speisekarte.dart';



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
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(centerTitle: true, title: Text('ScHooL4.0'),),
        body: _pageOptions[_selectedPage],
        bottomNavigationBar: BottomNavigationBar(
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


