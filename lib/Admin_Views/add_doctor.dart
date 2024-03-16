import 'package:flutter/material.dart';
import 'package:healthycare/Admin_Views/side_menu.dart';

class AddDoctor extends StatefulWidget {
  const AddDoctor({super.key});

  @override
  State<AddDoctor> createState() => _AddDoctorState();
}

class _AddDoctorState extends State<AddDoctor> {
  final _Dname = TextEditingController();
  final _Address = TextEditingController();
  final _Email = TextEditingController();
  final _Contact = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 205, 235, 255),
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 185, 225, 250),
        centerTitle: true,
        title: Text(
          'Add  Doctor',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Information of new Doctor',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Name :',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  FractionallySizedBox(
                    widthFactor: 0.8,
                    child: TextField(
                      controller: _Dname,
                      decoration: InputDecoration(
                        labelText: "Name",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                children: [
                  Text(
                    'Email :',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  FractionallySizedBox(
                    widthFactor: 0.8,
                    child: TextField(
                      controller: _Email,
                      decoration: InputDecoration(
                        labelText: "E-mail",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                children: [
                  Text(
                    'Speciality :',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
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
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  )
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                children: [
                  Text(
                    'Contact :',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  FractionallySizedBox(
                    widthFactor: 0.8,
                    child: TextField(
                      controller: _Contact,
                      decoration: InputDecoration(
                        labelText: "Contact",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Address :',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      FractionallySizedBox(
                        widthFactor: 0.8,
                        child: TextField(
                          controller: _Address,
                          decoration: InputDecoration(
                            labelText: "Address",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                ],
              ),
              SizedBox(height: 20.0),
              MaterialButton(
                onPressed: () {},
                child: Text('Add'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
