import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import '../controllers/barang_controller.dart';

class BarangScreen extends StatelessWidget {
  const BarangScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BarangController barangcontroller = Get.put(BarangController());
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
        () => barangcontroller.isLoading()
            ? Center(child: const CircularProgressIndicator())
            : Center(
                child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: barangcontroller.barangList.length,
                itemBuilder: (content, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 10, top: 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: DataTable(columns: [
                      // DataColumn(label: Text('No')),
                      DataColumn(label: Text('Kode Barang')),
                      DataColumn(label: Text('Nama Barang')),
                      DataColumn(label: Text('Stock')),
                      DataColumn(label: Text('Harga')),
                      DataColumn(label: Text('Kategori')),
                      DataColumn(label: Text('Deskripsi')),
                      DataColumn(label: Text('Gambar')),
                    ], rows: [
                      DataRow(cells: [
                        // DataCell(Text('1')),
                        DataCell(Text(barangcontroller
                            .barangList[index].kodeBarang
                            .toString())),
                        DataCell(Text(barangcontroller
                            .barangList[index].barangId
                            .toString())),
                        DataCell(Text(barangcontroller.barangList[index].stock
                            .toString())),
                        DataCell(Text(barangcontroller.barangList[index].harga
                            .toString())),
                        DataCell(Text(barangcontroller
                            .barangList[index].kategori
                            .toString())),
                        DataCell(Text(barangcontroller
                            .barangList[index].deskripsi
                            .toString())),
                        DataCell(Text(barangcontroller.barangList[index].gambar
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
