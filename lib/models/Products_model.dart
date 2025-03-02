class Products {
  String name;
  String price;
  String description;
  int quantity;
  String sku;
  String icone;

  Products(
      {required this.name,
      required this.price,
      required this.description,
      required this.quantity,
      required this.sku,
      required this.icone});

  // Método fromJson
  factory Products.fromJson(Map<String, dynamic> json) {
    return Products(
      name: json['name'],
      price: json['price'],
      description: json['description'],
      quantity: json['quantity'],
      sku: json['sku'],
      icone: json['icone'],
    );
  }

  // Método toJson ajustado
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'price': price,
      'description': description,
      'quantity': quantity,
      'sku': sku,
      'icone': icone,
    };
  }
}
