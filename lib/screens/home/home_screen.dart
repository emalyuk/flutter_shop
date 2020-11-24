import 'package:flutter/material.dart';
import 'package:flutter_test_app/constants/constants.dart';
import 'package:flutter_test_app/screens/home/components/body.dart';
import 'package:flutter_test_app/screens/home/components/body2.dart';

import 'components/user_profile_body.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int tabIndex = 0;

  List<Widget> listScreens;
  @override
  void initState() {
    super.initState();
    listScreens = [
      Body(),
      Body2(),
      UserProfileBody(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: listScreens[tabIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          backgroundColor: Theme.of(context).primaryColor,
          currentIndex: tabIndex,
          onTap: (index) {
            setState(() {
              tabIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity),
              label: "Profile",
            ),
          ]),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
          icon: Icon(Icons.arrow_back), color: kTextColor, onPressed: () {}),
      actions: [
        IconButton(
            icon: Icon(Icons.search, color: kTextColor), onPressed: () {}),
        IconButton(
            icon: Icon(
              Icons.shopping_basket,
              color: kTextColor,
            ),
            onPressed: () {}),
        SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
    );
  }
}
