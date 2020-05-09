import 'package:flutter/material.dart';
import './main.dart';

class ToDO extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('ToDo', style: TextStyle(color: Colors.black),),
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
                        title: Text("Hier hausaufgaben", style: TextStyle(color: Colors.black, fontWeight:  FontWeight.w500),),
                      )
                  ),
                  const SizedBox(height: 10.0,),

                ]
            )
        )
      //padding:  EdgeInsets.all(25.0),
      //child: Text('Persönliches', style: TextStyle(fontSize: 25.0),),
    );
  }
}