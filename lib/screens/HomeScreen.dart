import 'package:flutter/material.dart';

import '../constants.dart';
import 'ContactUs.dart';

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
                  backgroundImage: AssetImage("assets/images/my_img.jpg"),
                ),
                accountName: Text(
                  "Sourav Ganguly",
                  style: kNameStyle,
                ),
                accountEmail: Text(
                  "iamsourav37@gmail.com",
                  style: kEmailStyle,
                ),
              ),
              ListTile(
                selected: true,
                leading: Icon(
                  Icons.home,
                  size: 30.0,
                ),
                title: Text(
                  "Home",
                  style: kListTileTitleStyle,
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.contact_page),
                title: Text(
                  "Contact us",
                  style: kListTileTitleStyle,
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ContactusScreen(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
      body: Container(),
    );
  }
}
