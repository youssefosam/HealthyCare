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
                    DataColumn(label: Text("#")),
                    DataColumn(label: Text("name")),
                    DataColumn(label: Text("diagonsis")),
                    DataColumn(label: Text("City")),
                    DataColumn(label: Text("Address")),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text("1")),
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
                      DataCell(Text("Heart")),
                      DataCell(Text("Cairo")),
                      DataCell(Text("36 Gohar El-Kaed St., El-Azhar")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("2")),
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
                      DataCell(Text("Bones")),
                      DataCell(Text("Alex")),
                      DataCell(Text("8 El- Nasr St., El-Manshia, Alexandria")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("3")),
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
                      DataCell(Text("Eyes")),
                      DataCell(Text("Giza")),
                      DataCell(Text(" 32 Mahmoud St., P.O. Box: 12112")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("4")),
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
                      DataCell(Text("Heart")),
                      DataCell(Text("Cairo")),
                      DataCell(Text(" 4, 5 Sliman El Halby St")),
                    ]),
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
