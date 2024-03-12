import 'package:flutter/material.dart';
import 'package:healthycare/patient_views/SymptomsPages/back_page.dart';
import 'package:healthycare/patient_views/SymptomsPages/ears_page.dart';
import 'package:healthycare/patient_views/SymptomsPages/eye_page.dart';
import 'package:healthycare/patient_views/SymptomsPages/head_page.dart';
import 'package:healthycare/patient_views/SymptomsPages/heart_page.dart';
import 'package:healthycare/patient_views/SymptomsPages/nose_page.dart';
import 'package:healthycare/patient_views/SymptomsPages/stomech_page.dart';
import 'package:healthycare/patient_views/leg_page.dart';

class ChooseSymptoms extends StatefulWidget {
  const ChooseSymptoms({super.key});

  @override
  State<ChooseSymptoms> createState() => _choosesymptomsState();
}

class _choosesymptomsState extends State<ChooseSymptoms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData.fallback(),
        title: Center(
          child: const Text(
            "اختار المكان الذي يؤلمك",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 120,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                            image: AssetImage('assets/eye.png'),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const EyePage();
                              },
                            ),
                          );
                        },
                        child: Text('Eyes'),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 120,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                            image: AssetImage('assets/nose.png'),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const NosePage();
                              },
                            ),
                          );
                        },
                        child: Text('Nose'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 120,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                            image: AssetImage('assets/head.png'),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const HeadPage();
                              },
                            ),
                          );
                        },
                        child: Text('Head'),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 120,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                            image: AssetImage('assets/ears.png'),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const EarsPage();
                              },
                            ),
                          );
                        },
                        child: Text('Ears'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 120,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                            image: AssetImage('assets/heart.png'),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const HeartPage();
                              },
                            ),
                          );
                        },
                        child: Text('Heart'),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 120,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                            image: AssetImage('assets/back.png'),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const BackPage();
                              },
                            ),
                          );
                        },
                        child: Text('Back'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 120,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                            image: AssetImage('assets/leg.png'),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const LegPage();
                              },
                            ),
                          );
                        },
                        child: Text('Leg'),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 120,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                            image: AssetImage('assets/stomach.png'),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const StomichPage();
                              },
                            ),
                          );
                        },
                        child: Text('Stomach'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
