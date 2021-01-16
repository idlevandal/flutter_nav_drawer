import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(20.0),
          color: Theme.of(context).primaryColor,
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 100.0,
                  width: 100.0,
                  margin: EdgeInsets.only(top: 30.0, bottom: 10.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/200'),
                        fit: BoxFit.fill),
                  ),
                ),
                Text(
                  'David Allen',
                  style: TextStyle(fontSize: 22.0, color: Colors.white),
                ),
                Text(
                  'david@here.com',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
        DrawerListTile('Profile', Icons.person, '/profile'),
        DrawerListTile('Settings', Icons.settings, '/settings'),
        DrawerListTile('Logout', Icons.arrow_back, '/logout'),
      ],
    ));
  }
}

class DrawerListTile extends StatelessWidget {
  final String drawerTitle;
  final IconData drawerIcon;
  final String dRouteName;

  DrawerListTile(this.drawerTitle, this.drawerIcon, this.dRouteName);


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        // this closes the drawer so when we navigate back the drawer isn't open
        Navigator.pop(context);
        Navigator.pushNamed(context, dRouteName);
      },
      leading: Icon(drawerIcon),
      title: Text(
        drawerTitle,
        style: TextStyle(
            fontSize: 18.0
        ),
      ),
    );
  }
}

