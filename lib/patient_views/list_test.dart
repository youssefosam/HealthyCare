import 'package:flutter/material.dart';

class CheckboxListView extends StatefulWidget {
  @override
  _CheckboxListViewState createState() => _CheckboxListViewState();
}

class _CheckboxListViewState extends State<CheckboxListView> {
  List<String> _items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'لام المعد',
  ];

  List<String> _selectedItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox ListView'),
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = _items[index];
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
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('OK'),
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

void main() {
  runApp(MaterialApp(
    home: CheckboxListView(),
  ));
}
