import 'package:flutter/material.dart';
import 'package:healthycare/lab_views/home_lab_view.dart';

class loginlab extends StatelessWidget {
  const loginlab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg'),
            ),
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
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'رقم الهويه الوطنيه',
                      labelText: 'رقم الهويه الوطنيه',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'كلمه المرور',
                        labelText: 'كلمه المرور',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue)),
                        suffixIcon: Icon(Icons.remove_red_eye)),
                    obscureText: true,
                  ),
                ),
                MaterialButton(
                  onPressed: ()
                  {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LabHomeView();
                    }));
                  },
                  child: Text('تسجيل الدخول'),
                  color: Colors.blue,
                ),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
