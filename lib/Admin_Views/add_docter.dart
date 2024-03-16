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
        child: Column(
          children: [
            Text(
              'Information of new Doctor',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            FractionallySizedBox(
              widthFactor: 0.8,
              child: TextField(
                controller: _DoctorName,
                decoration: InputDecoration(
                  labelText: "Doctor Name",
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                  border: OutlineInputBorder(),
                  hintText: 'write  Doctor his name here...',
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            FractionallySizedBox(
              widthFactor: 0.8,
              child: TextField(
                controller: _City,
                decoration: InputDecoration(
                  labelText: "Doctor city",
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                  border: OutlineInputBorder(),
                  hintText: 'write  Doctor his city here...',
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Spicalty:',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                DropdownButton<String>(
                  alignment: AlignmentDirectional.centerStart,
                  hint: Text("--------------"),
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
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            FractionallySizedBox(
              widthFactor: 0.8,
              child: TextField(
                controller: _Email,
                decoration: InputDecoration(
                  labelText: "Doctor Email",
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                  border: OutlineInputBorder(),
                  hintText: 'write  Doctor his E-mail here...',
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            FractionallySizedBox(
              widthFactor: 0.8,
              child: TextField(
                controller: _Password,
                decoration: InputDecoration(
                  labelText: "Doctor Password",
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                  border: OutlineInputBorder(),
                  hintText: 'write  Doctor his password here...',
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            MaterialButton(
              color: Colors.lightBlue,
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.add),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text('Add '),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
