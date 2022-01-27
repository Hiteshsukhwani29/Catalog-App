import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
        padding: EdgeInsets.zero,
        child: ListView(padding: EdgeInsets.zero, children: [
        DrawerHeader(
            decoration: BoxDecoration(color: Colors.deepPurple),
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              accountName: Text("Hitesh Sukhwani"),
              accountEmail: Text("hiteshsukhwani29@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/55627571?v=4"),
                radius: 50.0,
              ),
            )),
        ListTile(
          leading: Icon(
            CupertinoIcons.home,
            color: Colors.white
          ),
          title: Text(
            "Home",
            textScaleFactor: 1.2,
            style: TextStyle(color: Colors.white),
          ),
        ),
        ListTile(
          leading: Icon(
            CupertinoIcons.profile_circled,
            color: Colors.white
          ),
          title: Text(
            "Profile",
            textScaleFactor: 1.2,
            style: TextStyle(color: Colors.white),
          ),
        ),
        ListTile(
          leading: Icon(
            CupertinoIcons.mail,
            color: Colors.white
          ),
          title: Text(
            "Contact Us",
            textScaleFactor: 1.2,
            style: TextStyle(color: Colors.white),
          ),
        )
      ]),
    ));
  }
}
