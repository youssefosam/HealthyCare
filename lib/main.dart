import 'package:flutter/material.dart';
// import 'package:healthycare/Doctor_views/login.dart';
import 'package:healthycare/Admin_Views/login.dart';
// import 'package:healthycare/lab_views/login.dart';
// import 'package:healthycare/patient_views/login.dart';

void main() {
  runApp(const DoctorApp());
}

class DoctorApp extends StatefulWidget {
  const DoctorApp({super.key});

  @override
  State<DoctorApp> createState() => _DoctorAppState();
}

class _DoctorAppState extends State<DoctorApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: loginDoctor(), //doctor views
      home: LoginAdmin(), //admin views
      // home: loginlab(), //lab views
      // home: loginPatient(), //patient views
    );
  }
}
