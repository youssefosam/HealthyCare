import 'package:flutter/material.dart';
import 'side_menu.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 205, 235, 255),
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 185, 225, 250),
        centerTitle: true,
        title: Text(
          'Dashboard',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Welcom Again Admin",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Text(
              'You have ......patient left to complete today',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                '4',
                style: TextStyle(
                  fontSize: 56,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
