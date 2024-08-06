import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Instagram automation",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          backgroundColor: Colors.purpleAccent,
        ),
        body: Row(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            NavigationRail(
              destinations: [
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text("home"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.edit),
                  label: Text("Edit"),
                ),
              ],
              elevation: 5,
              selectedIndex: 1,
              minWidth: 200,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10),
                child:Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 150,
                    width: double.infinity,
                    color: Colors.grey[300],
                  ),
                ],
              ),
            ),),
          ],
        ),
      ),
    );
  }
}
