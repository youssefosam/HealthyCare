import 'package:flutter/material.dart';

import '../payment_page.dart';

class StomichPage extends StatefulWidget {
  const StomichPage({super.key});

  @override
  State<StomichPage> createState() => _StomichPageState();
}

class _StomichPageState extends State<StomichPage> {
  List<String> _Stomich = [
    'آلام المعدة', //1
    'الحموضة والارتجاع المريئي', //2
    'الغثيان والقيء' //3
        'التورم والانتفاخ', //4
    'اضطرابات الجهاز الهضمي', //5
    'انخفاض الشهية', //6
    'القيء المصحوب بالدم  ', //7
    'الحازوقة', //8
    'نزيف في المعدة ', //9
    'قرحة المعدة ', //10
    'براز ذو مظهر أكثر قتامة', //11
    'البراز الدموي ', //12
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
          "Stomich Symptoms",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: _Stomich.length,
        itemBuilder: (BuildContext context, int index) {
          final item = _Stomich[index];
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
