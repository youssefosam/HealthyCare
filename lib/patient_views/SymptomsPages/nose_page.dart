import 'package:flutter/material.dart';

import '../payment_page.dart';

class NosePage extends StatefulWidget {
  const NosePage({super.key});

  @override
  State<NosePage> createState() => _NosePageState();
}

class _NosePageState extends State<NosePage> {
  List<String> _Nose = [
    'احتقان الأنف', //1
    'سيلان الأنف', //2
    'حكة الأنف', //3
    'العطس', //4
    'الألم أو الضغط', //5
    'صعوبة الشم', //6
    'النزيف الأنفي', //7
    'امتلاء العينين بالدموع', //8
    'انسداد الأذن', //9
    'احتقان الحلق', //10
    'الشعور بالتعب والإرهاق', //11
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
          "Nose symptoms",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: _Nose.length,
        itemBuilder: (BuildContext context, int index) {
          final item = _Nose[index];
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
