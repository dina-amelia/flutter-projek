import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Supplier"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: <DataColumn>[
            DataColumn(label: Text("Kode Barang")),
            DataColumn(label: Text("Nama Supplier")),
            DataColumn(label: Text("Alamat")),
            DataColumn(label: Text("No Telephone")),
          ],
          rows: <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text("1023")),
                DataCell(Text("MeyShop ")),
                DataCell(Text("Cibaduyut")),
                DataCell(Text("08921345765")),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text("1024")),
                DataCell(Text("DAS store")),
                DataCell(Text("Bandung")),
                DataCell(Text("08971232789")),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text("1025")),
                DataCell(Text("Fashion store")),
                DataCell(Text("Kuningan")),
                DataCell(Text("08976453127")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
