class BarangModel {
  bool? success;
  String? message;
  List<Data>? data;

  BarangModel(
      {required this.success, required this.message, required this.data});

  BarangModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? kodeBarang;
  int? barangId;
  int? stock;
  String? harga;
  String? kategori;
  String? deskripsi;
  String? gambar;

  Data(
      {required this.kodeBarang,
      required this.barangId,
      required this.stock,
      required this.harga,
      required this.kategori,
      required this.deskripsi,
      required this.gambar});

  Data.fromJson(Map<String, dynamic> json) {
    kodeBarang = json['kode_barang'];
    barangId = json['barang_id'];
    stock = json['stock'];
    harga = json['harga'];
    kategori = json['kategori'];
    deskripsi = json['deskripsi'];
    gambar = json['gambar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kode_barang'] = this.kodeBarang;
    data['barang_id'] = this.barangId;
    data['stock'] = this.stock;
    data['harga'] = this.harga;
    data['kategori'] = this.kategori;
    data['deskripsi'] = this.deskripsi;
    data['gambar'] = this.gambar;
    return data;
  }
}
