class Integrators {
  String name;
  String address;
  String city;
  String cnpj;
  String icone;
  String baseId;
  // DateTime timestamp;
  // double mudancaHora;
  // double mudancaDia;
  // double mudancaSemana;
  // double mudancaMes;
  // double mudancaAno;
  // double mudancaPeriodoTotal;

  Integrators({
    required this.name,
    required this.address,
    required this.city,
    required this.cnpj,
    required this.icone,
    required this.baseId,

    // required this.timestamp,
    // required this.mudancaHora,
    // required this.mudancaDia,
    // required this.mudancaSemana,
    // required this.mudancaMes,
    // required this.mudancaAno,
    // required this.mudancaPeriodoTotal,
  });

  // Método fromJson
  factory Integrators.fromJson(Map<String, dynamic> json) {
    return Integrators(
      name: json['name'],
      address: json['address'],
      city: json['city'],
      cnpj: json['cnpj'],
      icone: json['icon'],
      baseId: json['base_id'],

      // timestamp: DateTime.fromMillisecondsSinceEpoch(json['timestamp']),
      // mudancaHora: json['change_hour'].toDouble(),
      // mudancaDia: json['change_day'].toDouble(),
      // mudancaSemana: json['change_week'].toDouble(),
      // mudancaMes: json['change_month'].toDouble(),
      // mudancaAno: json['change_year'].toDouble(),
      // mudancaPeriodoTotal: json['change_total'].toDouble(),
    );
  }

// Método toJson ajustado
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'symbol': address,
      'city': city,
      'cnpj': cnpj,
      'icon': icone,
      'base_id': baseId,

      // 'timestamp': timestamp
      //     .millisecondsSinceEpoch, // Converte DateTime para milissegundos
      // 'change_hour': mudancaHora,
      // 'change_day': mudancaDia,
      // 'change_week': mudancaSemana,
      // 'change_month': mudancaMes,
      // 'change_year': mudancaAno,
      // 'change_total': mudancaPeriodoTotal,
    };
  }
}
