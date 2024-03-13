import 'package:flutter/material.dart';
import '../payment_page.dart';

class BackPage extends StatefulWidget {
  const BackPage({super.key});

  @override
  State<BackPage> createState() => _BackPageState();
}

class _BackPageState extends State<BackPage> {
  List<String> _Back = [
    'آلام الظهر', //1
    'الإحساس بالخدر، أو الوخز، أو الحرقان', //2
    'صعوبة في الحركة والانحناء', //3
    ' ألم في الساق', //4
    'ضعف العضلات', //5
    'وجع خفيف في جانب واحد من الجسم', //6
    'ألم عند السعال أو العطس أو الانتقال إلى أوضاع معينة', //7
    'ردود الفعل البطيئة', //8
    'مشاكل التوازن أو العرج', //9
    'صعوبة النهوض ', //10
    'عدم القدرة على البقاء في مكان واحد لفترة طويلة من الزمن ', //11
    'خشونة المفاصل', //12
  ];

  List<String> _selectedItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () {
          Navigator.pop(context);
        }),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Back symptoms",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: _Back.length,
        itemBuilder: (BuildContext context, int index) {
          final item = _Back[index];
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
