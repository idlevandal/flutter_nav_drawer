import 'package:flutter/material.dart';

class Logout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logout'),
      ),
      body: Container(
        child: Center(
          child: Text('Logout', style: TextStyle(fontSize: 26.0)),
        ),
      ),
    );
  }
}