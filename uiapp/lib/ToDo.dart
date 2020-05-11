import 'package:flutter/material.dart';
import './main.dart';

class ToDO extends StatefulWidget {
  @override
  _ToDOState createState() => _ToDOState();
}

class _ToDOState extends State<ToDO> {
  List<String> tasks = [
    'Mathe S.2',
    'Englisch AB3',
    'HSU S.20',
    'Englisch AB4',
    'Geschichte S.20',
    'Goethe Faust'
  ];

  void addItem(String item) {
    setState(() {
      tasks.add(item);
    });
    Navigator.of(context).pop();
  }

  void newEntry() {
    showDialog<AlertDialog>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: TextField(
              onSubmitted: addItem,
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Text(
          'Aufgaben',
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
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: tasks.length,
        itemBuilder: (context, i) {
          return SingleToDo(tasks[i]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: newEntry,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.lightBlue,
      ),
    );
  }
}

/*class ToDO extends StatelessWidget {
  final List<String> tasks = [
    'Mathe S.2','Daiko Might','Französisch S.14','Deutsch S.23','Englisch AB3','HSU S.20','Englisch AB4','Geschichte S.20','Goethe Faust'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          title: Text('Aufgaben',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w600),),
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
            return new SingleToDo(tasks[i]);
          },
        )
    );
  }
}*/

/*children: <Widget>[
            const SizedBox(height: 10),
            SingleToDo("Mathe S.22/3"),
            SingleToDo("Deutsch S.20"),*/
/*SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      margin: const EdgeInsets.all(8.0),
                      color: Colors.white,
                      child: ListTile(
                        title: Text("Hier hausaufgaben",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Raleway',),),
                      )
                  ),
                 */
class SingleToDo extends StatelessWidget {
  final String title;

  const SingleToDo(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 2.0),
        leading: Checkbox(
          value: false,
        ),
        title: Text(
          title,
          style: TextStyle(fontSize: 20, fontFamily: 'Raleway'),
        ),
        trailing: Icon(Icons.delete_outline),
      ),
    );
  }
}
