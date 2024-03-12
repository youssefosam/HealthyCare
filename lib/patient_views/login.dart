import 'package:flutter/material.dart';
import 'package:healthycare/patient_views/create.dart';
import 'package:healthycare/patient_views/home_view.dart';

import '../widgets/textfilt.dart';

class loginPatient extends StatelessWidget {
  const loginPatient({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff324E6B),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 100),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                  radius: 90, backgroundImage: AssetImage("assets/logo.png")),
              Text('تسجيل دخول',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent)),
              Column(
                children: [
                  Text(
                    'مرحبا بعودتك',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFilt(hintText: 'رقم الهويه الوطنيه',),
                  TextFilt(hintText: 'كلمه المرور',),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration : BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return PatientHomeView();
                            }));
                      },
                      child: Text(
                        'تسجيل الدخول',
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return const Regist();
                      }));
                    },
                    child: Text(
                      'انشاء حساب جديد',
                      style: TextStyle(color: Colors.black, fontWeight:FontWeight.bold )

                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}