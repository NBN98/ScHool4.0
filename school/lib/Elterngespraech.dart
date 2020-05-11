
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:uiapp/Termin.dart';
import './Termin.dart';
import './main.dart';
import './Page_0.dart';
//import 'package:cached_network_image/cached_network_image.dart';




class Meeting extends StatelessWidget {
  bool iSearchung = false;
  List<String> tasks = [
    'Markus Müller','Don Quixotte Doflamingo','Thomas Mann','Stefan Matthaus','Andreas Wanke','Vito Scaletta','Don Corleone','Max Meyer','David Schneider','Paul Fischer','Joe Budden'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          title: Text('(Eltern)-Gespräch ausmachen',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w700),),    //TextField(decoration: InputDecoration(hintText: "Suche nach Lehrer/in"),)
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => MyApp()),
            );
          },
          ),
        ),
          body: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: tasks.length,
                itemBuilder: (context, i){
                return SingleLehrer(tasks[i]);
                },
                )
               );
  }
}
        /*child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      margin: const EdgeInsets.all(8.0),
                      color: Colors.grey[300],
                      child: ListTile(
                        title: Text("Mit welchen Lehrern möchten Sie einen Termin zum (Eltern-)Gespräch ausmachen?",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Raleway'),),
                      )
                  ),
                  const SizedBox(height: 10.0,),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: Text("Markus Müller",
                            style: TextStyle(
                                color: Colors.black),),
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
                          title: Text("Gabriela Bauer",
                            style: TextStyle(
                                color: Colors.black),),
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
                          title: Text("Markus Koch",
                            style: TextStyle(
                                color: Colors.black),),
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
    );*/

class SingleLehrer extends StatelessWidget {
  final String title;
  const SingleLehrer(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: 18),
      child:
      ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 2.0),
        //leading: Checkbox(value: false,),
        title: Text(title,
          style: TextStyle(
              fontSize: 20,
              fontFamily: 'Raleway'),
        ),
        trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(
                builder: (context) => Appointment()
            )
            );
          }
      ),
    );
  }
}
