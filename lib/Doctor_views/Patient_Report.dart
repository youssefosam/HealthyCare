import 'package:flutter/material.dart';
import 'package:healthycare/Doctor_views/patient_report_old.dart';

class Patient_Report extends StatefulWidget {
  const Patient_Report({super.key});

  @override
  State<Patient_Report> createState() => _Patient_ReportState();
}

class _Patient_ReportState extends State<Patient_Report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 30, left: 16, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.center,
              height: 45,
              width: 300,
              decoration: BoxDecoration(
                  color: Color(0xff1E42B1),
                  borderRadius: BorderRadius.circular(8)),
              child: const Text(
                'Patient Report',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffEFF5FE),
                ),
              ),
            ),
            const Row(
              children: [
                Image(
                  image: AssetImage('assets/person.jpg'),
                  height: 100,
                  width: 100,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Patient Name: Amr',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            const Text(
              'Report',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
            ),
            Container(
              alignment: Alignment.topLeft,
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black38,
                  width: 2,
                ),
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter the patient report',
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ReportOld();
                }));
              },
              child: Text(
                'View Report',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff1E41BD),
                  minimumSize: Size(50, 45)),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
