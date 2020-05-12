import 'package:flutter/material.dart';
import './Persoenliches.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          title: Text('Infos',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Raleway'),),
          leading: IconButton(
            icon: Icon(Icons.arrow_back), color: Colors.black, onPressed: () {
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
                  Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      margin: const EdgeInsets.all(8.0),
                      color: Colors.grey[300],
                      child: ListTile(
                        title: Text(
                          "Gestaltung ergonometrischer Benutzeroberflächen: \n 2020 \u00a9 Noah, Ardit, Can, Eroll",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Raleway'),),
                      )
                  ),
                  const SizedBox(height: 10.0,),
                ]
            )
        )

    );
  }
}