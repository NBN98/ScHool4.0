import 'package:flutter/material.dart';
import './main.dart';
import './Page_0.dart';
// By Diddy
class ToDO extends StatefulWidget {
  @override
  _ToDOState createState() => _ToDOState();
}

class _ToDOState extends State<ToDO> {
  Map<String, bool> tasks = {
    'Mathe': false, 'Deutsch': false, 'HSU': false
  };

  void addItem(String item) {
    setState(() {
      tasks[item] = false;
    });
    Navigator.of(context).pop();
  }

  void deleteItem(String key) {
    setState(() {
      tasks.remove(key);
    });
  }

  void toggleDone(String key) {
    setState(() {
      tasks.update(key, (bool done) => !done);
    });
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
          String key = tasks.keys.elementAt(i);
          return SingleToDo(
            key,
            tasks[key],
                () => deleteItem(key),
                () => toggleDone(key),
          );
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
  }}
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
  final bool done;
  final Function remove;
  final Function toggleDone;

  const SingleToDo(this.title, this.done, this.remove,this.toggleDone);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 2.0),
        leading: Checkbox(
          value: done,
          onChanged: (bool value) => toggleDone(),
        ),
        title: Text(
          title,
          style: TextStyle(fontSize: 20, fontFamily: 'Raleway'),
        ),
        trailing: IconButton(
          icon: Icon(Icons.delete_outline),
          onPressed: () => remove(),
        ),
      ),
    );
  }
}