import 'package:flutter/material.dart';

import '../payment_page.dart';

class EyePage extends StatefulWidget {
  const EyePage({super.key});

  @override
  State<EyePage> createState() => _EyePageState();
}

class _EyePageState extends State<EyePage> {
  List<String> _Eye = [
    'بقع ونقاط كثيرة في المجال البصري', //1
    'رؤية ستار داكن يُغطي مجال الرؤية', //2
    'ألم مفاجئ في العينين والاحمرار والغثيان والقيء', //3
    'إغلاق تدريجي أو مفاجئ في مجال حقل الرؤية', //4
    'تشوهات في مركز البصري ', //5
    'رؤية هالات حول الأضواء ليلًا', //6
    'حرقة العينين وحكة ودموع وألم سطح العين', //7
    'الرؤية المزدوجة', //8
    'عدم وضوح الرؤية المفاجئ ', //9
    'صداع بالرأس (متوسط القوة)  ', //10
    'ألم بعضلات الوجه  ', //11
    'صعوبة التركيز في المهام البصرية  ', //12
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
          "Eyes symptoms",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: _Eye.length,
        itemBuilder: (BuildContext context, int index) {
          final item = _Eye[index];
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
