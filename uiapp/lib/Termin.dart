import 'package:flutter/material.dart';
import './Elterngespräch.dart';

class Appointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Termin buchen', style: TextStyle(color: Colors.black),),
          leading: IconButton(icon: Icon(Icons.arrow_back), color: Colors.black, onPressed: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => Meeting()),
            );
          },
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(60),   //8
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey[100]))
                      ),
                      child: TextField(
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Tippe hier deine Nachricht ein",
                          hintStyle: TextStyle(color: Colors.grey[400])
                        ),
                      )
                    ),
                    RaisedButton(
                      onPressed: () {},
                      child: Text('Nachricht versenden'),
                      color: Colors.grey[200]
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      //padding:  EdgeInsets.all(25.0),
      //child: Text('Persönliches', style: TextStyle(fontSize: 25.0),),
    );
  }
}