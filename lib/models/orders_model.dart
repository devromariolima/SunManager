class OrdersModel {
  String valor;
  String cliente;
  String integrador;
  String cidade;

  OrdersModel({
    required this.valor,
    required this.cliente,
    required this.integrador,
    required this.cidade,
  });

  // Método fromJson
  factory OrdersModel.fromJson(Map<String, dynamic> json) {
    return OrdersModel(
      valor: json['valor'],
      cliente: json['cliente'],
      integrador: json['integrador'],
      cidade: json['cidade'],
    );
  }

  // Método toJson ajustado
  Map<String, dynamic> toJson() {
    return {
      'valor': valor,
      'cliente': cliente,
      'integrador': integrador,
      'cidade': cidade,
    };
  }
}
