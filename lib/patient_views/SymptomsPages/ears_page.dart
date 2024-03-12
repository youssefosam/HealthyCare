import 'package:flutter/material.dart';

class EarsPage extends StatefulWidget {
  const EarsPage({super.key});

  @override
  State<EarsPage> createState() => _EarsPageState();
}

class _EarsPageState extends State<EarsPage> {
  bool _CheekSelected1 = false;
  bool _CheekSelected2 = false;
  bool _CheekSelected3 = false;
  bool _CheekSelected4 = false;
  bool _CheekSelected5 = false;
  bool _CheekSelected6 = false;
  bool _CheekSelected7 = false;
  bool _CheekSelected8 = false;
  bool _CheekSelected9 = false;
  bool _CheekSelected10 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Ears symptoms",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: Text(
              'آلام الأذن',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            value: _CheekSelected1,
            onChanged: (value) {
              setState(() {
                _CheekSelected1 = !_CheekSelected1;
              });
            },
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: Text(
              'احتقان الأذن',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            value: _CheekSelected2,
            onChanged: (value) {
              setState(() {
                _CheekSelected2 = !_CheekSelected2;
              });
            },
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: Text(
              'فقدان السمع',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            value: _CheekSelected3,
            onChanged: (value) {
              setState(() {
                _CheekSelected3 = !_CheekSelected3;
              });
            },
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: Text(
              'طنين الأذن',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            value: _CheekSelected4,
            onChanged: (value) {
              setState(() {
                _CheekSelected4 = !_CheekSelected4;
              });
            },
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: Text(
              'دوار الأذن',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            value: _CheekSelected5,
            onChanged: (value) {
              setState(() {
                _CheekSelected5 = !_CheekSelected5;
              });
            },
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: Text(
              'صعوبة السمع أو الاستجابة للأصوات',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            value: _CheekSelected6,
            onChanged: (value) {
              setState(() {
                _CheekSelected6 = !_CheekSelected6;
              });
            },
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: Text(
              'فقدان التوازن',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            value: _CheekSelected7,
            onChanged: (value) {
              setState(() {
                _CheekSelected7 = !_CheekSelected7;
              });
            },
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: Text(
              'إفرازات من الأذن',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            value: _CheekSelected8,
            onChanged: (value) {
              setState(() {
                _CheekSelected8 = !_CheekSelected8;
              });
            },
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: Text(
              'الاحمرار والتورم خلف الأذن',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            value: _CheekSelected9,
            onChanged: (value) {
              setState(() {
                _CheekSelected9 = !_CheekSelected9;
              });
            },
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: Text(
              'شعور بضغط واقع على الأذنين',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            value: _CheekSelected10,
            onChanged: (value) {
              setState(() {
                _CheekSelected10 = !_CheekSelected10;
              });
            },
          ),
          SizedBox(
            height: 15,
          ),
          MaterialButton(
            padding: EdgeInsets.all(15),
            color: Colors.blue,
            onPressed: () {},
            child: Text(
              ' Next ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
