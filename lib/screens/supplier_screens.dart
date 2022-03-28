// import 'package:flutter/material.dart';
// import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
// import 'package:get/instance_manager.dart';
// import '../controllers/supplier_controller.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Data Supplier',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: SupplierScreen(),
//     );
//   }
// }

// class SupplierScreen extends StatelessWidget {
//   const SupplierScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final SupplierController suppliercontroller = Get.put(SupplierController());
//     var size, height, width;
//     size = MediaQuery.of(context).size;
//     height = size.height;
//     width = size.width;
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(child: Text("Data Supplier")),
//         backgroundColor: Colors.blueAccent,
//       ),
//       body: Obx(
//         () => suppliercontroller.isLoading()
//             ? Center(child: const CircularProgressIndicator())
//             : Center(
//                 child: ListView.builder(
//                 itemCount: suppliercontroller.supplierList.length,
//                 itemBuilder: (content, index) {
//                   return Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       Container(
//                         width: 400,
//                         height: 100,
//                         margin: EdgeInsets.only(bottom: 10, top: 10),
//                         padding: EdgeInsets.all(10),
//                         decoration: BoxDecoration(
//                           gradient: LinearGradient(
//                               colors: [Colors.blueAccent, Colors.redAccent]),
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Text('Nama Supplier:' +
//                                 ' ' +
//                                 suppliercontroller
//                                     .supplierList[index].namaSupplier
//                                     .toString()),
//                             Text('No Telephone :' +
//                                 ' ' +
//                                 suppliercontroller
//                                     .supplierList[index].noTelephone
//                                     .toString()),
//                             Text('Alamat :' +
//                                 ' ' +
//                                 suppliercontroller.supplierList[index].alamat
//                                     .toString())
//                           ],
//                         ),
//                       ),
//                     ],
//                   );
//                 },
//               )),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import '../controllers/supplier_controller.dart';

class SupplierScreen extends StatelessWidget {
  const SupplierScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SupplierController suppliercontroller = Get.put(SupplierController());
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Data Barang')),
        backgroundColor: Color.fromARGB(255, 57, 136, 135),
      ),
      body: Obx(
        () => suppliercontroller.isLoading()
            ? Center(child: const CircularProgressIndicator())
            : Center(
                child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: suppliercontroller.supplierList.length,
                itemBuilder: (content, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 10, top: 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: DataTable(columns: [
                      DataColumn(label: Text('Nama Supplier')),
                      DataColumn(label: Text('No Telephone')),
                      DataColumn(label: Text('Alamat')),
                    ], rows: [
                      DataRow(cells: [
                        // DataCell(Text('1')),
                        DataCell(Text(suppliercontroller
                            .supplierList[index].namaSupplier
                            .toString())),
                        DataCell(Text(suppliercontroller
                            .supplierList[index].noTelephone
                            .toString())),
                        DataCell(Text(suppliercontroller
                            .supplierList[index].alamat
                            .toString())),
                      ]),
                    ]),
                  );
                },
              )),
      ),
    );
  }
}
