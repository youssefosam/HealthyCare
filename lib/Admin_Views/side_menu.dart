import 'package:flutter/material.dart';
import 'package:healthycare/Admin_Views/login(admin).dart';
import 'package:healthycare/Admin_Views/patients.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blue,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Side menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
              color: Colors.green,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/logo.png'),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Profile'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.person_outline),
            title: Text('Patient'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AllPatient();
                  },
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_information_outlined),
            title: Text('Add Doctor'),
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return AddDoctor();
              //     },
              //   ),
              // );
            },
          ),
          ListTile(
            leading: Icon(Icons.logout_outlined),
            title: Text('Logout'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AdLogin();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
