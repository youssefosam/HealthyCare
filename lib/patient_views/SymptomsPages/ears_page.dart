import 'package:flutter/material.dart';

import '../payment_page.dart';

class EarsPage extends StatefulWidget {
  const EarsPage({super.key});

  @override
  State<EarsPage> createState() => _EarsPageState();
}

class _EarsPageState extends State<EarsPage> {
  List<String> _Ears = [
    'آلام الأذن', //1
    'احتقان الأذن', //2
    'فقدان السمع', //3
    'طنين الأذن', //4
    'دوار الأذن', //5
    'صعوبة السمع أو الاستجابة للأصوات', //6
    'فقدان التوازن', //7
    'إفرازات من الأذن', //8
    'الاحمرار والتورم خلف الأذن', //9
    'شعور بضغط واقع على الأذنين', //10
    // 'ألم بعضلات الوجه  ', //11
    // 'صعوبة التركيز في المهام البصرية  ', //12
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
          "Ears symptoms",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: _Ears.length,
        itemBuilder: (BuildContext context, int index) {
          final item = _Ears[index];
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
