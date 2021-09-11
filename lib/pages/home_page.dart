import 'package:day2/widget/drawer.dart';
import 'package:flutter/material.dart';
import 'package:day2/models/catalog.dart';
import 'package:day2/widget/itemWidget.dart';

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

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel.items[index],
            );
          },
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
