import 'package:flutter/material.dart';
import 'Speisekarte.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                    child: FittedBox(
                        child: Material(
                            color: Colors.white,
                            elevation: 14.0,
                            borderRadius: BorderRadius.circular(24.0),
                            shadowColor: Color(0x802196F3),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child:myDetailsContainer1(),
                                ),
                                Container(
                                  width: 250,
                                  height: 100,    //250
                                  child: ClipRRect(
                                    borderRadius: new BorderRadius.circular(24.0),
                                    child: Image(
                                        fit: BoxFit.contain,
                                        alignment: Alignment.topRight,
                                        image: AssetImage('image/obstbecher.png'

                                        )
                                    ),
                                  ),
                                )
                              ],
                            )

                        )
                    )
                )
            ),
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                    child: FittedBox(
                        child: Material(
                            color: Colors.white,
                            elevation: 14.0,
                            borderRadius: BorderRadius.circular(24.0),
                            shadowColor: Color(0x802196F3),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child:myDetailsContainer4(),
                                ),
                                Container(
                                  width: 250,
                                  height: 100,    //250
                                  child: ClipRRect(
                                    borderRadius: new BorderRadius.circular(24.0),
                                    child: Image(
                                        fit: BoxFit.contain,
                                        alignment: Alignment.topRight,
                                        image: AssetImage('image/donut.png'

                                        )
                                    ),
                                  ),
                                )
                              ],
                            )

                        )
                    )
                )
            ),
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                    child: FittedBox(
                        child: Material(
                            color: Colors.white,
                            elevation: 14.0,
                            borderRadius: BorderRadius.circular(24.0),
                            shadowColor: Color(0x802196F3),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child:myDetailsContainer3(),
                                ),
                                Container(
                                  width: 250,
                                  height: 100,    //250
                                  child: ClipRRect(
                                    borderRadius: new BorderRadius.circular(24.0),
                                    child: Image(
                                        fit: BoxFit.contain,
                                        alignment: Alignment.topRight,
                                        image: AssetImage('image/cake.png'

                                        )
                                    ),
                                  ),
                                )
                              ],
                            )

                        )
                    )
                )
            ),
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                    child: FittedBox(
                        child: Material(
                            color: Colors.white,
                            elevation: 14.0,
                            borderRadius: BorderRadius.circular(24.0),
                            shadowColor: Color(0x802196F3),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child:myDetailsContainer2(),
                                ),
                                Container(
                                  width: 250,
                                  height: 100,    //250
                                  child: ClipRRect(
                                    borderRadius: new BorderRadius.circular(24.0),
                                    child: Image(
                                        fit: BoxFit.contain,
                                        alignment: Alignment.topRight,
                                        image: AssetImage('image/cookie.png'

                                        )
                                    ),
                                  ),
                                )
                              ],
                            )

                        )
                    )
                )
            )
          ],
          /* body: SingleChildScrollView(
            child: TabBarView(children: [
              Icon(Icons.apps)
            ],),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      margin: const EdgeInsets.all(8.0),
                      color: Colors.white,
                      child: ListTile(
                        title: Text("Hier Speisekarte", style: TextStyle(color: Colors.black, fontWeight:  FontWeight.w500),),
                      )
                  ),
                  const SizedBox(height: 10.0,),

                ]
            ) */
        )
    );
  }
}

Widget myDetailsContainer1() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Container(child: Text("Obst Bowl",
          style: TextStyle(color: Color(0xffe6020a), fontSize: 20.0,fontWeight: FontWeight.bold, fontFamily: 'Raleway'),)),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(child: Text("\u00B7 Verschiedene \u00B7 Sorten \u00B7 1,20€",
                  style: TextStyle(color: Colors.black, fontSize: 18.0, fontFamily: 'Raleway'),)),


                //Container(child: Text("(321) \u00B7 0.9 mi",
                //style: TextStyle(color: Colors.black54, fontSize: 18.0,),)),
              ],)),
      ),
      //Container(child: Text("Pastries \u00B7 Phoenix,AZ",
      // style: TextStyle(color: Colors.black54, fontSize: 18.0,fontWeight: FontWeight.bold),)),
    ],
  );
}

Widget myDetailsContainer2() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Container(child: Text("Cookies",
          style: TextStyle(color: Color(0xffe6020a), fontSize: 20.0,fontWeight: FontWeight.bold, fontFamily: 'Raleway'),)),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(child: Text("\u00B7 Verschiedene Sorten \u00B7 0,40€",
                  style: TextStyle(color: Colors.black, fontSize: 18.0, fontFamily: 'Raleway'),)),


                //Container(child: Text("(321) \u00B7 0.9 mi",
                //style: TextStyle(color: Colors.black54, fontSize: 18.0,),)),
              ],)),
      ),
      //Container(child: Text("Pastries \u00B7 Phoenix,AZ",
      // style: TextStyle(color: Colors.black54, fontSize: 18.0,fontWeight: FontWeight.bold),)),
    ],
  );
}

Widget myDetailsContainer3() {
  /*return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Container(child: Text("Spaghetti Carbonara",
          style: TextStyle(color: Color(0xffe6020a), fontSize: 20.0,fontWeight: FontWeight.bold),)),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Container(child: Row(children: <Widget>[
          Container(child: Text("- Schinkenwürfel, Sahne",
            style: TextStyle(color: Colors.black54, fontSize: 18.0,),)),

     ],)),
      ),
    ],
  ); */
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Container(child: Text("Kuchenstück",
          style: TextStyle(color: Color(0xffe6020a), fontSize: 20.0,fontWeight: FontWeight.bold, fontFamily: 'Raleway'),)),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(child: Text("\u00B7 Käse \u00B7 Schokolade \u00B7 0,75€",
                  style: TextStyle(color: Colors.black, fontSize: 18.0, fontFamily: 'Raleway'),)),


                //Container(child: Text("(321) \u00B7 0.9 mi",
                //style: TextStyle(color: Colors.black54, fontSize: 18.0,),)),
              ],)),
      ),
      //Container(child: Text("Pastries \u00B7 Phoenix,AZ",
      // style: TextStyle(color: Colors.black54, fontSize: 18.0,fontWeight: FontWeight.bold),)),
    ],
  );
}

Widget myDetailsContainer4() {
  /*return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Container(child: Text("Pizza Shulemaja",
          style: TextStyle(color: Color(0xffe6020a), fontSize: 20.0,fontWeight: FontWeight.bold),)),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Container(child: Row(children: <Widget>[
          Container(child: Text("- Salami, Pilze", style: TextStyle(
            color: Colors.black54, fontSize: 18.0,),)),

        ],)),
      ),

    ],
  );*/
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Container(child: Text("Donuts",
          style: TextStyle(color: Color(0xffe6020a), fontSize: 20.0,fontWeight: FontWeight.bold, fontFamily: 'Raleway'),)),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(child: Text("\u00B7 Schoko \u00B7 Streusel \u00B7 0,60€",
                  style: TextStyle(color: Colors.black, fontSize: 18.0, fontFamily: 'Raleway'),)),


                //Container(child: Text("(321) \u00B7 0.9 mi",
                //style: TextStyle(color: Colors.black54, fontSize: 18.0,),)),
              ],)),
      ),
      //Container(child: Text("Pastries \u00B7 Phoenix,AZ",
      // style: TextStyle(color: Colors.black54, fontSize: 18.0,fontWeight: FontWeight.bold),)),
    ],
  );
}