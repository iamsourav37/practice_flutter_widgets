import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class FetchDataFromInternet extends StatefulWidget {
  const FetchDataFromInternet({Key? key}) : super(key: key);

  @override
  _FetchDataFromInternetState createState() => _FetchDataFromInternetState();
}

class _FetchDataFromInternetState extends State<FetchDataFromInternet> {
  final url = "https://jsonplaceholder.typicode.com/users";
  List usersData = [];

  Future getUsers() async {
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body) as List;
      setState(() {
        usersData = jsonData;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JSON placeholder"),
      ),
      body: usersData.length != 0
          ? ListView.builder(
              itemCount: usersData.length,
              itemBuilder: (context, index) {
                var user = usersData[index];
                return ListTile(
                  onTap: () {},
                  title: Text("${user['name']}"),
                  subtitle: Text("${user['email']}"),
                );
              },
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
