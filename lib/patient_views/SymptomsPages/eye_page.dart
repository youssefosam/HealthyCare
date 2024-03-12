import 'package:flutter/material.dart';

class EyePage extends StatefulWidget {
  const EyePage({super.key});

  @override
  State<EyePage> createState() => _EyePageState();
}

class _EyePageState extends State<EyePage> {
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
  bool _CheekSelected11 = false;
  bool _CheekSelected12 = false;

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
          "Eyes symptoms",
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
              'بقع ونقاط كثيرة في المجال البصري',
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
              'رؤية ستار داكن يُغطي مجال الرؤية',
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
              'ألم مفاجئ في العينين والاحمرار والغثيان والقيء',
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
              'إغلاق تدريجي أو مفاجئ في مجال حقل الرؤية',
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
              'تشوهات في مركز البصري ',
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
              'رؤية هالات حول الأضواء ليلًا',
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
              'حرقة العينين وحكة ودموع وألم سطح العين',
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
              'الرؤية المزدوجة',
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
              'عدم وضوح الرؤية المفاجئ ',
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
              'صداع بالرأس (متوسط القوة)  ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            value: _CheekSelected10,
            onChanged: (value) {
              setState(() {
                _CheekSelected10 = !_CheekSelected10;
              });
            },
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: Text(
              'ألم بعضلات الوجه  ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            value: _CheekSelected11,
            onChanged: (value) {
              setState(() {
                _CheekSelected11 = !_CheekSelected11;
              });
            },
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: Text(
              'صعوبة التركيز في المهام البصرية  ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            value: _CheekSelected12,
            onChanged: (value) {
              setState(() {
                _CheekSelected12 = !_CheekSelected12;
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
