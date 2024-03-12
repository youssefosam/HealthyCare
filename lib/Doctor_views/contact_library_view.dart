import 'package:flutter/material.dart';
import 'package:healthycare/Doctor_views/home_view.dart';
import 'package:healthycare/widgets/custom_form.dart';

class ContactLibrart extends StatefulWidget {
  const ContactLibrart({super.key});

  static const String routeName = 'add';

  @override
  State<ContactLibrart> createState() => _ContactLibrartState();
}

class _ContactLibrartState extends State<ContactLibrart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData.fallback(),
      ),
      body: Column(
        children: [
          Text(
            '''Contact the
  liboratory''',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          CustomFormFeild("Patient"),
          CustomFormFeild("Status"),
          CustomFormFeild("Date"),
          CustomFormFeild("Doctor"),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 200,
            height: 50,
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(
                Colors.green,
              )),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const HomeView();
                }));
              },
              child: Text(" Send", style: TextStyle(fontSize: 22)),
            ),
          )
        ],
      ),
    );
  }
}
