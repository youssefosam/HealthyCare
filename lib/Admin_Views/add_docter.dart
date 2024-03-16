import 'package:flutter/material.dart';
import 'package:healthycare/Admin_Views/side_menu.dart';

class AddDoctor extends StatefulWidget {
  const AddDoctor({super.key});

  @override
  State<AddDoctor> createState() => _AddDoctorState();
}

class _AddDoctorState extends State<AddDoctor> {
  final _DoctorName = TextEditingController();
  final _City = TextEditingController();
  // final String Spil;
  final _Email = TextEditingController();
  final _Password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 205, 235, 255),
      //Side Menu
      drawer: NavDrawer(),
      //Header Part
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 185, 225, 250),
        centerTitle: true,
        title: Text(
          'Add Doctor',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      //Body Part
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Information of new Doctor',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Name:',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  FractionallySizedBox(
                    widthFactor: 0.8,
                    child: TextField(
                      controller: _DoctorName,
                      decoration: InputDecoration(
                        labelText: "Dr Name",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'City:',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  FractionallySizedBox(
                    widthFactor: 0.8,
                    child: TextField(
                      controller: _City,
                      decoration: InputDecoration(
                        labelText: "City",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Specalty:',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  DropdownButton<String>(
                    hint: Text("------------------"),
                    items: <String>[
                      'Heart',
                      'Back',
                      'Eyes',
                      'Ears',
                      'Stomich',
                      'Head',
                      'Nose',
                      'Leg'
                    ].map((String e) {
                      return DropdownMenuItem<String>(
                        value: e,
                        child: Text(e),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  )
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Email:',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  FractionallySizedBox(
                    widthFactor: 0.8,
                    child: TextField(
                      controller: _Email,
                      decoration: InputDecoration(
                        labelText: "Email",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Password:',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  FractionallySizedBox(
                    widthFactor: 0.8,
                    child: TextField(
                      obscureText: true,
                      controller: _Password,
                      decoration: InputDecoration(
                        labelText: "Password",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              MaterialButton(
                height: 15.0,
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.send_sharp),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      'Send',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
