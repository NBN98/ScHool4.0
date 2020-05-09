import 'package:flutter/material.dart';
import './Noten.dart';
import './main.dart';

class Personal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Persönliches', style: TextStyle(color: Colors.black),),
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
                title: Text("Max Mustermann, \n Klasse 11a, \n Asam-Gymnasium München", style: TextStyle(color: Colors.black, fontWeight:  FontWeight.w500),),
              )
            ),
            const SizedBox(height: 10.0,),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.grade, color: Colors.black,),
                    title: Text("Notendurchschnitt:  2,3", style: TextStyle(color: Colors.black),),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: (){
                      Navigator.of(context)
                          .push(
                        MaterialPageRoute(
                          builder: (context) => Noten()
                        )
                      );
                      //Erweiterte Noten
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.mail, color: Colors.black,),
                    title: Text("Nachrichten", style: TextStyle(color: Colors.black),),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: (){
                      // Einstellungen
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.settings, color: Colors.black,),
                    title: Text("Einstellungen", style: TextStyle(color: Colors.black),),
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