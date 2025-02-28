class Integrators {
  String name;
  String address;
  String city;
  String zipcode;
  String cnpj;
  String icone;
  String phone;

  Integrators({
    required this.name,
    required this.address,
    required this.city,
    required this.zipcode,
    required this.cnpj,
    required this.icone,
    required this.phone,
  });

  // Método fromJson
  factory Integrators.fromJson(Map<String, dynamic> json) {
    return Integrators(
      name: json['name'],
      address: json['address'],
      city: json['city'],
      zipcode: json['zip_code'],
      cnpj: json['cnpj'],
      icone: json['icon'],
      phone: json['phone'],
    );
  }

// Método toJson ajustado
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'address': address,
      'city': city,
      'zipCode': zipcode,
      'cnpj': cnpj,
      'icon': icone,
      'phone': phone,
    };
  }
}
