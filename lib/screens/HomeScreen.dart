import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_flutter_widgets/screens/AgeCalculator.dart';

import '../constants.dart';
import 'ContactUs.dart';
import 'JSONExample.dart';
import 'FetchDataFromInternet.dart';

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
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AgeCalculator()));
                },
                leading: Icon(Icons.calculate),
                title: Text(
                  "Age Calculator",
                  style: kListTileTitleStyle,
                ),
              ),
              ListTile(
                leading: Icon(Icons.drive_eta_sharp),
                title: Text(
                  "JSON example",
                  style: kListTileTitleStyle,
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => JSONExample()));
                },
              ),
              ListTile(
                leading: Icon(CupertinoIcons.globe),
                title: Text(
                  "Fetch Data from Internet",
                  style: kListTileTitleStyle,
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => FetchDataFromInternet()));
                },
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
