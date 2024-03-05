import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.red,
                backgroundBlendMode: BlendMode.clear,
                image: DecorationImage(
                    image: AssetImage("assets/images/drawer-header.jpeg"),
                    fit: BoxFit.cover)),
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              accountName: Text("Shakil Ahmed"),
              accountEmail: Text("hello@shakilahmeed.com"),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home),
            title: Text("Home"),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled),
            title: Text("About Us"),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.smallcircle_fill_circle),
            title: Text("Location"),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.settings),
            title: Text("Settings"),
          )
        ],
      ),
    );
  }
}
