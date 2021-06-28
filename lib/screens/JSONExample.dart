import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class JSONExample extends StatefulWidget {
  const JSONExample({Key? key}) : super(key: key);

  @override
  _JSONExampleState createState() => _JSONExampleState();
}

class _JSONExampleState extends State<JSONExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JSON example"),
      ),
      body: FutureBuilder(
        future: rootBundle.loadString("assets/json/person.json"),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            var mydata = json.decode(snapshot.data.toString());
            print("length : ${mydata.length}");
            return ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: mydata.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 6,
                  margin: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text("Name: ${mydata[index]['name']}"),
                          Text("Age: ${mydata[index]['age']}"),
                          Text("Country : ${mydata[index]['country']}"),
                          Text("Salary : ${mydata[index]['salary']}"),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
