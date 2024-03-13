import 'package:flutter/material.dart';

import '../payment_page.dart';

class HeadPage extends StatefulWidget {
  const HeadPage({super.key});

  @override
  State<HeadPage> createState() => _HeadPageState();
}

class _HeadPageState extends State<HeadPage> {
 List<String> _Head = [
    'صداع', //1
    'دوار', //2
    'ضغط في الرأس',//3
    'الدوار الدماغي',//4
    'الغثيان والقيء', //5
    'الضوضاء في الأذن', //6
    'نبض حول العينين وفي الرأس', //7
    'ضعف في التركيز', //8
     'الضوضاء في الأذن', //9
    'وجع على كلا الجانبين ', //10
    'آلام الرقبة ',//11
    'الأرق', //12
  ];

  List<String> _selectedItems = [];

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
          "Head symptoms",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body:ListView.builder(
        itemCount: _Head.length,
        itemBuilder: (BuildContext context, int index) {
          final item = _Head[index];
          final isSelected = _selectedItems.contains(item);

          return CheckboxListTile(
            title: Text(item),
            value: isSelected,
            onChanged: (bool? value) {
              setState(() {
                if (value == true) {
                  _selectedItems.add(item);
                } else {
                  _selectedItems.remove(item);
                }
              });
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Selected Items'),
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children:
                      _selectedItems.map((item) => Text('- $item')).toList(),
                ),
                actions: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return PaymentPage();
                            },
                          ));
                        },
                        child: Text('OK'),
                      ),
                    ],
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.check),
      ),
    );
  }
}
