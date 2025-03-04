class OrdersModel {
  String uid;
  String valor;
  String cliente;
  String integrador;
  String cidade;

  OrdersModel({
    required this.uid,
    required this.valor,
    required this.cliente,
    required this.integrador,
    required this.cidade,
  });

  // Método fromJson
  factory OrdersModel.fromJson(Map<String, dynamic> json) {
    return OrdersModel(
      uid: json['uid'],
      valor: json['valor'],
      cliente: json['cliente'],
      integrador: json['integrador'],
      cidade: json['cidade'],
    );
  }

  // Método toJson ajustado
  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'valor': valor,
      'cliente': cliente,
      'integrador': integrador,
      'cidade': cidade,
    };
  }
}
