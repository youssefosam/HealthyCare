import 'package:flutter/material.dart';
import 'package:healthycare/Admin_Views/side_menu.dart';

class AllPatient extends StatefulWidget {
  const AllPatient({super.key});

  @override
  State<AllPatient> createState() => _AllPatientState();
}

class _AllPatientState extends State<AllPatient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 205, 235, 255),
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 185, 225, 250),
        centerTitle: true,
      ),
    );
  }
}
