import 'package:day2/widget/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[300],
      appBar: AppBar(
        title: Center(
          child: Text(
            'Demo',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            child: Text(
              'welcome to this demo App',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
