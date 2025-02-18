class Integrators {
  String name;
  String address;
  String cnpj;
  String baseId;
  String icone;
  // DateTime timestamp;
  // double mudancaHora;
  // double mudancaDia;
  // double mudancaSemana;
  // double mudancaMes;
  // double mudancaAno;
  // double mudancaPeriodoTotal;

  Integrators({
    required this.baseId,
    required this.icone,
    required this.name,
    required this.address,
    required this.cnpj,
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
      baseId: json['base_id'],
      icone: json['icon'],
      name: json['name'],
      address: json['symbol'],
      cnpj: json['cnpj'],
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
      'base_id': baseId,
      'icon': icone,
      'name': name,
      'symbol': address,
      'cnpj': cnpj,
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
