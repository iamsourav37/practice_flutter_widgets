import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Widgets"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Container(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Theme.of(context).primaryColor,
                  backgroundImage: AssetImage("assets/images/my_img.jpg"),
                ),
                accountName: Text("Sourav Ganguly"),
                accountEmail: Text("iamsourav37@gmail.com"),
              ),
              // Divider(),
              ListTile(
                selected: true,
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      body: Container(),
    );
  }
}
