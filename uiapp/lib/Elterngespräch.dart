
import 'package:flutter/material.dart';
import 'package:uiapp/Termin.dart';
import './main.dart';
import 'package:cached_network_image/cached_network_image.dart';




class Meeting extends StatelessWidget {
  bool iSearchung = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Elterngespräch', style: TextStyle(color: Colors.black),),    //TextField(decoration: InputDecoration(hintText: "Suche nach Lehrer/in"),)
          leading: IconButton(icon: Icon(Icons.arrow_back), color: Colors.black, onPressed: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => MyApp()),
            );
          },
          ),

        ),
        body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      margin: const EdgeInsets.all(8.0),
                      color: Colors.white,
                      child: ListTile(
                        title: Text("Mit welchen Lehrern möchten Sie ein Gespräch/Elterngespräch ausmachen?", style: TextStyle(color: Colors.black, fontWeight:  FontWeight.w500),),
                      )
                  ),
                  const SizedBox(height: 10.0,),
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: Text("Markus Müller", style: TextStyle(color: Colors.black),),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: (){
                            Navigator.of(context)
                                .push(
                                MaterialPageRoute(
                                    builder: (context) => Appointment()
                                )
                            );
                          },

                        ),
                        ListTile(
                          title: Text("Gabriela Bauer", style: TextStyle(color: Colors.black),),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: (){
                            Navigator.of(context)
                                .push(
                                MaterialPageRoute(
                                    builder: (context) => Appointment()
                                )
                            );
                          },

                        ),
                        ListTile(
                          title: Text("Markus Koch", style: TextStyle(color: Colors.black),),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: (){
                            Navigator.of(context)
                                .push(
                                MaterialPageRoute(
                                    builder: (context) => Appointment()
                                )
                            );
                          },

                        ),
                        ListTile(
                          title: Text("Angelo Meier", style: TextStyle(color: Colors.black),),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: (){
                            Navigator.of(context)
                                .push(
                                MaterialPageRoute(
                                    builder: (context) => Appointment()
                                )
                            );
                          },

                        ),
                        ListTile(
                          title: Text("Sabina Stiller", style: TextStyle(color: Colors.black),),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: (){
                            Navigator.of(context)
                                .push(
                                MaterialPageRoute(
                                    builder: (context) => Appointment()
                                )
                            );
                          },

                        ),
                        ListTile(
                          title: Text("Ursula Landkammer", style: TextStyle(color: Colors.black),),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: (){
                            Navigator.of(context)
                                .push(
                                MaterialPageRoute(
                                    builder: (context) => Appointment()
                                )
                            );
                          },

                        ),
                        ListTile(
                          title: Text("Dieter Wolfahrt", style: TextStyle(color: Colors.black),),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: (){
                            Navigator.of(context)
                                .push(
                                MaterialPageRoute(
                                    builder: (context) => Appointment()
                                )
                            );
                          },

                        ),
                        ListTile(
                          title: Text("Nina Haag", style: TextStyle(color: Colors.black),),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: (){
                            Navigator.of(context)
                                .push(
                                MaterialPageRoute(
                                    builder: (context) => Appointment()
                                )
                            );
                          },

                        ),
                        ListTile(
                          title: Text("Alexander Bruch", style: TextStyle(color: Colors.black),),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: (){
                            Navigator.of(context)
                                .push(
                                MaterialPageRoute(
                                    builder: (context) => Appointment()
                                )
                            );
                          },

                        ),
                      ],
                  )
                  ),
                ],
            )
        )
      //padding:  EdgeInsets.all(25.0),
      //child: Text('Persönliches', style: TextStyle(fontSize: 25.0),),
    );
  }
}