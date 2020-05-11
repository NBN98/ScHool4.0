import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(25.0),
      child: Center(
        child: Text('Startseite',
          textAlign: TextAlign.start,
          style: TextStyle(
              fontSize: 36.0,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w600),
        ),
      )
    );
  }
}