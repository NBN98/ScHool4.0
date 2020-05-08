import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('image/background.png'),
                          fit: BoxFit.fill

                          ) // DecorationImage
                      ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 105,
                          width: 200,    //80
                          height: 190,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('image/logo_transparent_1.png')
                              )
                            ),
                          )

                        ),
                        Positioned(
                          child: Container(
                            margin: EdgeInsets.only(top: 100),
                            child: Center(
                              child: Text("Welcome to ScHooL4.0", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
                            )
                          )
                        ),

                        Positioned(
                            child: Container(
                                margin: EdgeInsets.only(top: 200),
                                child: Center(
                                  child: Text("Your new way of learning", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),),
                                )
                            )
                        )
                      ],
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(143, 170, 251, 1),
                              blurRadius: 10.0,
                              offset: Offset(0, 10)
                            )
                            ]
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "E-Mail der Schule",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                  ),
                                )
                              ),
                              Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Passwort",
                                        hintStyle: TextStyle(color: Colors.grey[400])
                                    ),
                                  )
                              )
                            ],
                          )
                        ),
                        SizedBox(height: 30,),
                        Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(143, 180, 251, 1),
                                Color.fromRGBO(143, 180, 251, 1),
                              ]
                            )
                          ),
                          child: Center(
                            child: Text("Einloggen", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          )
                        ),
                        SizedBox(height: 70,),
                        Text("Passwort vergessen", style: TextStyle(decoration: TextDecoration.underline, decorationStyle: TextDecorationStyle.double, color: Color.fromRGBO(143, 180, 251, 1), fontWeight: FontWeight.bold),),
                      ],
                    )
                  )
                ],
            ),
        ),
          )
    );
  }
}



  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

