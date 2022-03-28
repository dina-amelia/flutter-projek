import 'package:flutter/material.dart';
import 'package:penjualan/data_table.dart';
import 'package:penjualan/screens/supplier_screens.dart';
import 'package:penjualan/screens/barang_screens.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('FASHION SHOP')),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            margin: const EdgeInsets.all(9),
            child: InkWell(
              onTap: () {
                Navigator.of(context, rootNavigator: false).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => SupplierScreen(),
                  ),
                );
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.people,
                      size: 70,
                      color: Colors.blueAccent,
                    ),
                    Text("Data Supplier", style: TextStyle(fontSize: 15.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(9),
            child: InkWell(
              onTap: () {
                Navigator.of(context, rootNavigator: false).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => BarangScreen(),
                  ),
                );
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.shopping_cart,
                      size: 70,
                      color: Colors.blueAccent,
                    ),
                    Text("Data Barang", style: TextStyle(fontSize: 15.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(9),
            child: InkWell(
              onTap: () {
                Navigator.of(context, rootNavigator: false).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => MyHomePage(),
                  ),
                );
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.list,
                      size: 70,
                      color: Colors.blueAccent,
                    ),
                    Text("Data Pesanan", style: TextStyle(fontSize: 15.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(9),
            child: InkWell(
              onTap: () {
                Navigator.of(context, rootNavigator: false).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => MyHomePage(),
                  ),
                );
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.book,
                      size: 70,
                      color: Colors.blueAccent,
                    ),
                    Text("Data Laporan", style: TextStyle(fontSize: 15.0)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
