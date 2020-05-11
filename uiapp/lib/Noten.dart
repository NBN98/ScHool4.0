import 'package:flutter/material.dart';
import 'package:uiapp/Persoenliches.dart';
//import './P';

class Noten extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          title: Text('Notenübersicht (Ø 2,3)',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Raleway'),),
          leading: IconButton(icon: Icon(Icons.arrow_back), color: Colors.black, onPressed: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => Personal()),
            );
          },
          ),
        ),
        body: SingleChildScrollView(

            child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[


                  const SizedBox(height: 10.0,),
                  Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      color: Colors.grey[300],
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Text("Chemie:  2", style: TextStyle(color: Colors.black, fontFamily: 'Raleway'),),
                            trailing: Icon(Icons.keyboard_arrow_right),
                            onTap: (){
                            },
                          ),
                          ListTile(
                            title: Text("Mathe:   1", style: TextStyle(color: Colors.black, fontFamily: 'Raleway'),),
                            trailing: Icon(Icons.keyboard_arrow_right),
                            onTap: (){
                              // Einstellungen
                            },
                          ),
                          ListTile(
                            title: Text("Deutsch:   4", style: TextStyle(color: Colors.black, fontFamily: 'Raleway'),),
                            trailing: Icon(Icons.keyboard_arrow_right),
                            onTap: (){
                              // Einstellungen
                            },
                          ),
                          ListTile(
                            title: Text("Musik:   3", style: TextStyle(color: Colors.black, fontFamily: 'Raleway'),),
                            trailing: Icon(Icons.keyboard_arrow_right),
                            onTap: (){
                              // Einstellungen
                            },
                          ),
                          ListTile(
                            title: Text("Sport:   1", style: TextStyle(color: Colors.black, fontFamily: 'Raleway'),),
                            trailing: Icon(Icons.keyboard_arrow_right),
                            onTap: (){
                              // Einstellungen
                            },
                          ),
                        ],
                      )
                  )
                ]
            )
        )
      //padding:  EdgeInsets.all(25.0),
      //child: Text('Persönliches', style: TextStyle(fontSize: 25.0),),
    );
  }
}