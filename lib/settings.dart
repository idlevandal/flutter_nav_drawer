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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Settings', style: TextStyle(fontSize: 26.0)),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    primary: Colors.blue
                ),
                child: Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: Icon(Icons.arrow_back_ios_sharp, size: 22.0,)
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 14.0),
              MaterialButton(
                color: Colors.blue,
                shape: CircleBorder(),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Icon(Icons.arrow_back_ios_sharp, size: 22.0, color: Colors.white,)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}