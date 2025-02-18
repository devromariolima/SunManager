import 'package:cripto/models/Integrators_model.dart';

class Historico {
  DateTime dataOperacao;
  String tipoOperacao;
  Integrators moeda;
  double valor;
  double quantidade;

  Historico({
    required this.dataOperacao,
    required this.tipoOperacao,
    required this.moeda,
    required this.valor,
    required this.quantidade,
  });
}
