import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final profileImg = "assets/images/avataaars.png";
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("Saad Waseem"),
            accountEmail: const Text("saad.waseem@technado.co"),
            currentAccountPicture:
                CircleAvatar(backgroundImage: AssetImage(profileImg)),
          ),
          const ListTile(
            leading: Icon(CupertinoIcons.home),
            title: Text("Home"),
          ),
        ],
      ),
    );
  }
}
