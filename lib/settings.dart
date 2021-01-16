import 'package:flutter/material.dart';
import 'package:flutter_drawer_app/main_drawer.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      drawer: MainDrawer(),
      body: Container(
        child: Center(
          child: Text('Settings', style: TextStyle(fontSize: 26.0)),
        ),
      ),
    );
  }
}