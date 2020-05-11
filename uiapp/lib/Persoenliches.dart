import 'package:flutter/material.dart';
import './Noten.dart';
import './main.dart';

class Personal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          title: Text(
            'Persönliches',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w600),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {
              Navigator.push(
                context,
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
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  margin: const EdgeInsets.all(15.0),
                  color: Colors.grey[300],
                  child: ListTile(
                    title: Text(
                      "Max Mustermann\nKlasse 11a\nAsam-Gymnasium München",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                        fontSize: 18,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 10.0,
              ),
              Card(
                  color: Colors.grey[300],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(
                          Icons.grade,
                          color: Colors.black,
                        ),
                        title: Text(
                          "Notendurchschnitt:  2,3",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w600),
                        ),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Noten()));
                          //Erweiterte Noten
                        },
                      ),
                      ListTile(
                        title: Text(
                          "Nachrichten",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w600),
                        ),
                        leading: Icon(
                          Icons.mail,
                          color: Colors.black,
                        ),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          // Einstellungen
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.settings,
                          color: Colors.black,
                        ),
                        title: Text(
                          "Einstellungen",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w600),
                        ),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          // Einstellungen
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.exit_to_app, color: Colors.black,),
                        title: Text("Ausloggen", style: TextStyle(color: Colors.black, fontFamily: 'Raleway', fontWeight: FontWeight.w600 ),),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: (){
                          // Einstellungen
                        },
                      ),
                    ],
                  ))
            ]))
        //padding:  EdgeInsets.all(25.0),
        //child: Text('Persönliches', style: TextStyle(fontSize: 25.0),),
        );
  }
}
