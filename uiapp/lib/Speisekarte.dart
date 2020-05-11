import 'package:flutter/material.dart';
import './main.dart';
import 'FirstScreen.dart';
import 'SecondScreen.dart';

void main() => runApp(Food());

class Food extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
          length: 2,
          child: Scaffold(

              appBar: AppBar(
                backgroundColor: Colors.grey[300],
                title: Text('Speisekarte', style: TextStyle(color: Colors.black, fontFamily: 'Raleway', fontWeight: FontWeight.w600,),),
                leading: IconButton(icon: Icon(Icons.arrow_back), color: Colors.black, onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
                ),
                bottom: TabBar(
                  labelColor: Colors.black,
                  tabs: [
                    Tab(
                      child: Text("Hauptgerichte",
                            style: TextStyle(fontFamily: 'Raleway', color: Colors.black, fontWeight: FontWeight.bold),),


                    ),
                    Tab(
                        child: Text(
                            "Nachspeisen/Snacks",
                        style: TextStyle(fontFamily: 'Raleway', color: Colors.black, fontWeight: FontWeight.bold),)
                    )
                  ],
                ),
              ),
              body: TabBarView(
                  children: [
                    FirstScreen(),
                    SecondScreen()
                    //Icon(Icons.directions_transit)
                  ]
              )


          ),
        )
    );

  }
}

