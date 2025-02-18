import 'dart:math';
import 'package:cripto/models/moedas.dart';

class MoedaRepository {
  static List<Integrators> tabela = [
    Integrators(
      icone: 'https://i.imgur.com/V45bRQq.png',
      nome: 'Solarium Tech',
      sigla: 'BTC',
      cnpj: 34500.00,
      baseId: 'bitcoin',
      // timestamp: DateTime.now(),
      // mudancaHora: 0.5,
      // mudancaDia: 2.0,
      // mudancaSemana: 5.0,
      // mudancaMes: 12.0,
      // mudancaAno: 45.0,
      // mudancaPeriodoTotal: 150.0,
    ),
    Integrators(
      icone: 'https://i.imgur.com/ICEbb90.png',
      nome: 'EnerSun Integradores',
      sigla: 'ETH',
      cnpj: 2000.00,
      baseId: 'ethereum',
      // timestamp: DateTime.now(),
      // mudancaHora: -0.2,
      // mudancaDia: 1.5,
      // mudancaSemana: 4.2,
      // mudancaMes: 10.8,
      // mudancaAno: 38.5,
      // mudancaPeriodoTotal: 120.0,
    ),
    Integrators(
      icone: 'https://i.imgur.com/p5LOBMG.png',
      nome: 'BrightVolt Energia',
      sigla: 'AVAX',
      cnpj: 16.50,
      baseId: 'AVAX',
      // timestamp: DateTime.now(),
      // mudancaHora: 0.1,
      // mudancaDia: 0.9,
      // mudancaSemana: 3.1,
      // mudancaMes: 8.0,
      // mudancaAno: 20.0,
      // mudancaPeriodoTotal: 85.0,
    ),
    Integrators(
      icone: 'https://i.imgur.com/NCSAD6h.png',
      nome: 'Solaris Soluções',
      sigla: 'BNB',
      cnpj: 2.50,
      baseId: 'BNB',
      // timestamp: DateTime.now(),
      // mudancaHora: -0.3,
      // mudancaDia: 1.0,
      // mudancaSemana: 2.8,
      // mudancaMes: 6.5,
      // mudancaAno: 15.0,
      // mudancaPeriodoTotal: 60.0,
    ),
    Integrators(
      icone: 'https://i.imgur.com/ikeUlJl.png',
      nome: 'EcoSun Engenharia',
      sigla: 'ADA',
      cnpj: 1.20,
      baseId: 'Cardano',
      // timestamp: DateTime.now(),
      // mudancaHora: 0.2,
      // mudancaDia: 1.2,
      // mudancaSemana: 3.5,
      // mudancaMes: 9.2,
      // mudancaAno: 25.0,
      // mudancaPeriodoTotal: 90.0,
    ),
    Integrators(
      icone: 'https://i.imgur.com/4455dEw.png',
      nome: 'Photon Power',
      sigla: 'LINK',
      cnpj: 22.00,
      baseId: 'Chainlink',
      // timestamp: DateTime.now(),
      // mudancaHora: 0.2,
      // mudancaDia: 1.2,
      // mudancaSemana: 3.5,
      // mudancaMes: 9.2,
      // mudancaAno: 25.0,
      // mudancaPeriodoTotal: 90.0,
    ),
    Integrators(
      icone: 'https://i.imgur.com/YKdWmqq.png',
      nome: 'SolTech Renováveis',
      sigla: 'DOGE',
      cnpj: 0.30,
      baseId: 'Chainlink',
      // timestamp: DateTime.now(),
      // mudancaHora: 0.2,
      // mudancaDia: 1.2,
      // mudancaSemana: 3.5,
      // mudancaMes: 9.2,
      // mudancaAno: 25.0,
      // mudancaPeriodoTotal: 90.0,
    ),
    Integrators(
      icone: 'https://i.imgur.com/J9Yd5Sr.png',
      nome: 'Verde Luz Sistemas',
      sigla: 'WSTETH',
      cnpj: 1500.00,
      baseId: 'WSTETH',
      // timestamp: DateTime.now(),
      // mudancaHora: 0.2,
      // mudancaDia: 1.2,
      // mudancaSemana: 3.5,
      // mudancaMes: 9.2,
      // mudancaAno: 25.0,
      // mudancaPeriodoTotal: 90.0,
    ),
    Integrators(
      icone: 'https://i.imgur.com/HbzqG0p.png',
      nome: 'Helios Engenharia Solar',
      sigla: 'Litecoin',
      cnpj: 160.00,
      baseId: 'Chainlink',
      // timestamp: DateTime.now(),
      // mudancaHora: 0.2,
      // mudancaDia: 1.2,
      // mudancaSemana: 3.5,
      // mudancaMes: 9.2,
      // mudancaAno: 25.0,
      // mudancaPeriodoTotal: 90.0,
    ),
    Integrators(
      icone: 'https://i.imgur.com/CumXwMQ.png',
      nome: 'Lumina Solar Solutions',
      sigla: 'SHIB',
      cnpj: 0.04,
      baseId: 'SHIB',
      // timestamp: DateTime.now(),
      // mudancaHora: 0.2,
      // mudancaDia: 1.2,
      // mudancaSemana: 3.5,
      // mudancaMes: 9.2,
      // mudancaAno: 25.0,
      // mudancaPeriodoTotal: 90.0,
    ),
    Integrators(
      icone: 'https://i.imgur.com/HgIoRC1.png',
      nome: 'SunVolt Serviços',
      sigla: 'SOL',
      cnpj: 100.00,
      baseId: 'SHIB',
      // timestamp: DateTime.now(),
      // mudancaHora: 0.2,
      // mudancaDia: 1.2,
      // mudancaSemana: 3.5,
      // mudancaMes: 9.2,
      // mudancaAno: 25.0,
      // mudancaPeriodoTotal: 90.0,
    ),
    Integrators(
      icone: 'https://i.imgur.com/Wu9UNH9.png',
      nome: 'BlueSky Energia',
      sigla: 'SUI',
      cnpj: 5.00,
      baseId: 'SUI',
      // timestamp: DateTime.now(),
      // mudancaHora: 0.2,
      // mudancaDia: 1.2,
      // mudancaSemana: 3.5,
      // mudancaMes: 9.2,
      // mudancaAno: 25.0,
      // mudancaPeriodoTotal: 90.0,
    ),
    Integrators(
      icone: 'https://i.imgur.com/3SDQd15.png',
      nome: 'SolarWay Integradores',
      sigla: 'USDT',
      cnpj: 1.00,
      baseId: 'Tether',
      // timestamp: DateTime.now(),
      // mudancaHora: 0.2,
      // mudancaDia: 1.2,
      // mudancaSemana: 3.5,
      // mudancaMes: 9.2,
      // mudancaAno: 25.0,
      // mudancaPeriodoTotal: 90.0,
    ),
    Integrators(
      icone: 'https://i.imgur.com/GIRHKI4.png',
      nome: 'PowerGreen Engenharia',
      sigla: 'TON',
      cnpj: 1.20,
      baseId: 'Toncoin',
      // timestamp: DateTime.now(),
      // mudancaHora: 0.2,
      // mudancaDia: 1.2,
      // mudancaSemana: 3.5,
      // mudancaMes: 9.2,
      // mudancaAno: 25.0,
      // mudancaPeriodoTotal: 90.0,
    ),
    Integrators(
      icone: 'https://i.imgur.com/EgBiNHF.png',
      nome: 'SolSmart Soluções',
      sigla: 'LEO',
      cnpj: 2.00,
      baseId: 'UNUS SED LEO',
      // timestamp: DateTime.now(),
      // mudancaHora: 0.2,
      // mudancaDia: 1.2,
      // mudancaSemana: 3.5,
      // mudancaMes: 9.2,
      // mudancaAno: 25.0,
      // mudancaPeriodoTotal: 90.0,
    ),
    Integrators(
      icone: 'https://i.imgur.com/6v5Wlpd.jpg',
      nome: 'EcoLight Energia',
      sigla: 'USDS',
      cnpj: 1.00,
      baseId: 'USDS',
      // timestamp: DateTime.now(),
      // mudancaHora: 0.2,
      // mudancaDia: 1.2,
      // mudancaSemana: 3.5,
      // mudancaMes: 9.2,
      // mudancaAno: 25.0,
      // mudancaPeriodoTotal: 90.0,
    ),
    Integrators(
      icone: 'https://i.imgur.com/Wz5FLNC.png',
      nome: 'Aurora Solar Experts',
      sigla: 'WETH',
      cnpj: 30.00,
      baseId: 'WETH',
      // timestamp: DateTime.now(),
      // mudancaHora: 0.2,
      // mudancaDia: 1.2,
      // mudancaSemana: 3.5,
      // mudancaMes: 9.2,
      // mudancaAno: 25.0,
      // mudancaPeriodoTotal: 90.0,
    ),
    Integrators(
      icone: 'https://i.imgur.com/G0AzDls.png',
      nome: 'HelioVolt Instalações',
      sigla: 'WBTC',
      cnpj: 3429.390,
      baseId: 'WBTC',
      // timestamp: DateTime.now(),
      // mudancaHora: 0.2,
      // mudancaDia: 1.2,
      // mudancaSemana: 3.5,
      // mudancaMes: 9.2,
      // mudancaAno: 25.0,
      // mudancaPeriodoTotal: 90.0,
    ),
    Integrators(
      icone: 'https://i.imgur.com/rS1EFZU.png',
      nome: 'SunFlow Energia',
      sigla: 'WTRX',
      cnpj: 0.085,
      baseId: 'WTRX',
      // timestamp: DateTime.now(),
      // mudancaHora: 0.2,
      // mudancaDia: 1.2,
      // mudancaSemana: 3.5,
      // mudancaMes: 9.2,
      // mudancaAno: 25.0,
      // mudancaPeriodoTotal: 90.0,
    ),
    Integrators(
      icone: 'https://i.imgur.com/ULtju8G.png',
      nome: 'NovaEnergia Integradores',
      sigla: 'XRP',
      cnpj: 0.70,
      baseId: 'WTRX',
      // timestamp: DateTime.now(),
      // mudancaHora: 0.2,
      // mudancaDia: 1.2,
      // mudancaSemana: 3.5,
      // mudancaMes: 9.2,
      // mudancaAno: 25.0,
      // mudancaPeriodoTotal: 90.0,
    ),
  ];

  // Função para gerar dados mocados de histórico de preços
  List<Map<String, dynamic>> getHistoricoMoeda() {
    final Random rng = Random();
    final int currentTime = DateTime.now().millisecondsSinceEpoch;

    return [
      {
        'hour': [
          for (var i = 0; i < 60; i++)
            [
              (rng.nextDouble() * 100).toStringAsFixed(2), // Preço aleatório
              (currentTime - (i * 60 * 1000))
                  .toString() // Timestamp de 1 hora atrás
            ]
        ],
      },
      {
        'day': [
          for (var i = 0; i < 24; i++)
            [
              (rng.nextDouble() * 100).toStringAsFixed(2), // Preço aleatório
              (currentTime - (i * 3600 * 1000))
                  .toString() // Timestamp de 1 dia atrás
            ]
        ],
      },
      {
        'week': [
          for (var i = 0; i < 7; i++)
            [
              (rng.nextDouble() * 100).toStringAsFixed(2), // Preço aleatório
              (currentTime - (i * 24 * 3600 * 1000))
                  .toString() // Timestamp de 1 semana atrás
            ]
        ],
      },
      {
        'month': [
          for (var i = 0; i < 30; i++)
            [
              (rng.nextDouble() * 100).toStringAsFixed(2), // Preço aleatório
              (currentTime - (i * 24 * 3600 * 1000))
                  .toString() // Timestamp de 1 mês atrás
            ]
        ],
      },
      {
        'year': [
          for (var i = 0; i < 12; i++)
            [
              (rng.nextDouble() * 100).toStringAsFixed(2), // Preço aleatório
              (currentTime - (i * 30 * 24 * 3600 * 1000))
                  .toString() // Timestamp de 1 ano atrás
            ]
        ],
      },
      {
        'total': [
          for (var i = 0; i < 100; i++)
            [
              (rng.nextDouble() * 100).toStringAsFixed(2), // Preço aleatório
              (currentTime - (i * 7 * 24 * 3600 * 1000))
                  .toString() // Timestamp de 100 semanas atrás
            ]
        ],
      }
    ];
  }
}
