class BranchModel {
  String uid;
  String name;
  String address;
  String city;
  String zipcode;
  String cnpj;
  String icone;
  String phone;
  String email;
  bool isActive = false;
  String observation;
  String serviceregion;

  BranchModel(
      {required this.uid,
      required this.name,
      required this.address,
      required this.city,
      required this.zipcode,
      required this.cnpj,
      required this.icone,
      required this.phone,
      required this.email,
      required this.isActive,
      required this.observation,
      required this.serviceregion});

  // Método fromJson
  factory BranchModel.fromJson(Map<String, dynamic> json) {
    return BranchModel(
      uid: json['uid'],
      name: json['name'],
      address: json['address'],
      city: json['city'],
      zipcode: json['zip_code'],
      cnpj: json['cnpj'],
      icone: json['icon'],
      phone: json['phone'],
      email: json['email'],
      isActive: json['isActive'],
      observation: json['observation'],
      serviceregion: json['serviceregion'],
    );
  }

// Método toJson ajustado
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'uid': uid,
      'address': address,
      'city': city,
      'zipCode': zipcode,
      'cnpj': cnpj,
      'icon': icone,
      'phone': phone,
      'email': phone,
      'isActive': isActive,
      'observation': observation,
      'serviceregion': serviceregion,
    };
  }
}
