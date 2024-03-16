import 'package:flutter/material.dart';
import 'package:healthycare/Admin_Views/side_menu.dart';

class Transfer extends StatefulWidget {
  const Transfer({super.key});

  @override
  State<Transfer> createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 205, 235, 255),
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 185, 225, 250),
        centerTitle: true,
        title: Text(
          'Transfer to Doctor',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(80.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 65.0,
                      backgroundColor: Color.fromARGB(255, 229, 222, 138),
                      child: Icon(
                        Icons.person,
                        size: 80,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'P.Name: .............',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Diagonsis:...............',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'City:...............',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 40,
            ),
            Divider(
              height: 480,
              thickness: 5.0,
              color: Colors.grey,
            ),
            SizedBox(
              width: 40,
            ),
            Center(
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'Choose Doctor',
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: [
                      Text(
                        'City:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      DropdownButton<String>(
                        hint: Text('------------------'),
                        items: <String>['Cario', 'Alexandria', 'Giza', 'Faiyum']
                            .map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (_) {},
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Text(
                        'Spicalty:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
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
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Text(
                        'D.Name:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      DropdownButton<String>(
                        hint: Text("------------------"),
                        items: <String>[
                          'Ahmed Mahmod',
                          'Aya Ahmed',
                          'Amr  Adel',
                          'Hady  Morsy',
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
                  SizedBox(
                    height: 80.0,
                  ),
                  Center(
                    child: MaterialButton(
                      color: Colors.lightBlue,
                      height: 40.0,
                      minWidth: 80.0,
                      onPressed: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.send_sharp,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Send',
                            style: TextStyle(fontSize: 15.0),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
