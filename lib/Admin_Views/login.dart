import 'package:flutter/material.dart';
import 'package:healthycare/Admin_Views/dashboard.dart';

class LoginAdmin extends StatefulWidget {
  const LoginAdmin({super.key});

  @override
  State<LoginAdmin> createState() => _LoginAdminState();
}

class _LoginAdminState extends State<LoginAdmin> {
  final _Email = TextEditingController();
  var EmailInputElement;
  final _Password = TextEditingController();
  var PasswordInputElement;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 205, 235, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 185, 225, 250),
        centerTitle: true,
        title: Text(
          'Login Page',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 65.0,
                backgroundColor: Color.fromARGB(255, 229, 222, 138),
                child: Icon(
                  Icons.person,
                  size: 80,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 40.0),
              FractionallySizedBox(
                widthFactor: 0.8,
                child: TextField(
                  controller: _Email,
                  decoration: InputDecoration(
                    labelText: "E-mail",
                    border: OutlineInputBorder(),
                    hintText: 'write  your email here...',
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              FractionallySizedBox(
                widthFactor: 0.8,
                child: TextField(
                  obscureText: true,
                  controller: _Password,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    hintText: "Enter your password here...",
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              FractionallySizedBox(
                widthFactor: 0.75,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return DashBoard();
                          }),
                        );
                      },
                      icon: Icon(
                        Icons.login_outlined,
                        color: Color.fromARGB(255, 54, 140, 211),
                      ),
                    ),
                    Text('Login')
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
