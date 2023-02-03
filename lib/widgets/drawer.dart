import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: EdgeInsets.zero,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("Azijur Rahaman"),
                accountEmail: Text("aziz.cse.cu@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(
                    ("assets/images/ex.png")
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.blue,
              ),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.settings,
                color: Colors.blue,
              ),
              title: Text("Settings"),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.blue,
              ),
              title: Text("Contact Us"),
            ),
          ],
        ),
      ),
    );
  }
}
