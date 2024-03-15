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
      drawer: NavDrawer(),
      appBar: AppBar(
        // leading: IconButton(
        //   onPressed: () {
        //     setState(() {
        //       isExpanded = !isExpanded;
        //     });
        //   },
        //   icon: Icon(Icons.menu),
        // ),
        centerTitle: true,
        title: Text(
          'Dashboard',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Text(
          "Welcom Again Admin",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
