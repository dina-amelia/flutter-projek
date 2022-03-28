class SupplierModel {
  bool? success;
  String? message;
  List<Data>? data;

  SupplierModel({this.success, this.message, this.data});

  SupplierModel.fromJson(Map<String, dynamic> json) {
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
  String? namaSupplier;
  int? noTelephone;
  String? alamat;

  Data({this.namaSupplier, this.noTelephone, this.alamat});

  Data.fromJson(Map<String, dynamic> json) {
    namaSupplier = json['nama_supplier'];
    noTelephone = json['no_telephone'];
    alamat = json['alamat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nama_supplier'] = this.namaSupplier;
    data['no_telephone'] = this.noTelephone;
    data['alamat'] = this.alamat;
    return data;
  }
}
