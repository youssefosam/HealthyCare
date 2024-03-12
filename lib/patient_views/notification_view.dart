import 'package:flutter/material.dart';

class Notification2 extends StatefulWidget {
  const Notification2({super.key});

  @override
  State<Notification2> createState() => _Notification2State();
}

class _Notification2State extends State<Notification2> {
  int index = 0;
  // bool isVisible = true;
  // bool isVisible1 = true;
  // bool isVisible2 = true;

  // void _toggleVisibility() {
  //   setState(() {
  //     isVisible = !isVisible;
  //     isVisible1 = !isVisible1;
  //     isVisible2 = !isVisible2;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.blue,
        title: Center(child: const Text('Notifications')),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.all(Radius.circular(25)),
                border: Border.all(color: Colors.black, width: 3),
              ),
              width: 350,
              height: 120,
              alignment: Alignment.center,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Congratulations ! you have Completed 20 workouts this week ',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.2,
                    ),
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'From:Application ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'Date:8/3/2024 ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.all(Radius.circular(25)),
                border: Border.all(color: Colors.black, width: 3),
              ),
              width: 350,
              height: 120,
              alignment: Alignment.topRight,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    'your natrition is very low ,Here is a tip to improve it.',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.2,
                    ),
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'From:Dr.John Doe',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'Date:6/3/2024 ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  border: Border.all(color: Colors.black, width: 3)),
              width: 350,
              height: 120,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.all(30),
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Text(
                    'you are just closer to achieve your goals.',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.2,
                    ),
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'From:Application ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'Date:4/3/2024 ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1.8),
              ),
              child: MaterialButton(
                color: Colors.blue,
                onPressed: () {},
                child: Text('Mark as  Read'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
