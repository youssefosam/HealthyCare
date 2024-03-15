import 'package:flutter/material.dart';
import 'package:healthycare/Admin_Views/side_menu.dart';
import 'package:healthycare/Admin_Views/transfer.dart';

class AllPatient extends StatefulWidget {
  const AllPatient({super.key});

  @override
  State<AllPatient> createState() => _AllPatientState();
}

class _AllPatientState extends State<AllPatient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 205, 235, 255),
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 185, 225, 250),
        centerTitle: true,
        title: Text(
          ' All Patient ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.report_outlined),
                      SizedBox(width: 10),
                      Text(
                        'All Patient Table',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              DataTable(
                  headingRowColor: MaterialStateColor.resolveWith(
                      (states) => Color.fromARGB(255, 171, 183, 224)),
                  columns: [
                    DataColumn(label: Text("name")),
                    DataColumn(label: Text("NID")),
                    DataColumn(label: Text("diagonsis")),
                    DataColumn(label: Text("City")),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Transfer();
                              },
                            ),
                          );
                        },
                        child: Text('Mohamed Ahmed '),
                      )),
                      DataCell(Text("301026002203")),
                      DataCell(Text("Heart")),
                      DataCell(Text("Cairo")),
                    ]),
                    DataRow(cells: [
                      DataCell(TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Transfer();
                              },
                            ),
                          );
                        },
                        child: Text('Mohamed Moahmoud'),
                      )),
                      DataCell(Text("301050630523")),
                      DataCell(Text("Bones")),
                      DataCell(Text("Alex")),
                    ]),
                    DataRow(cells: [
                      DataCell(TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Transfer();
                              },
                            ),
                          );
                        },
                        child: Text('Ali Osama'),
                      )),
                      DataCell(Text("301050630523")),
                      DataCell(Text("Eyes")),
                      DataCell(Text("Alex")),
                    ]),
                    DataRow(cells: [
                      DataCell(TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Transfer();
                              },
                            ),
                          );
                        },
                        child: Text('Assma Sayed'),
                      )),
                      DataCell(Text("301026006803")),
                      DataCell(Text("Heart")),
                      DataCell(Text("Cairo")),
                    ]),
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
