import 'dart:math';
import 'package:cripto/models/Integrators_model.dart';

class MoedaRepository {
  static List<Integrators> tabela = [
    Integrators(
      icone: 'https://i.imgur.com/V45bRQq.png',
      name: 'Solarium Tech',
      address: 'BTC',
      cnpj: '79.740.522/0001-93',
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
      name: 'EnerSun Integradores',
      address: 'ETH',
      cnpj: '94.512.358/0001-40',
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
      name: 'BrightVolt Energia',
      address: 'AVAX',
      cnpj: '47.108.417/0001-61',
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
      name: 'Solaris Soluções',
      address: 'BNB',
      cnpj: '23.518.093/0001-71',
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
      name: 'EcoSun Engenharia',
      address: 'ADA',
      cnpj: '60.903.619/0001-32',
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
      name: 'Photon Power',
      address: 'LINK',
      cnpj: '09.471.322/0001-88',
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
      name: 'SolTech Renováveis',
      address: 'DOGE',
      cnpj: '30.173.681/0001-70',
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
      name: 'Verde Luz Sistemas',
      address: 'WSTETH',
      cnpj: '82.649.476/0001-20',
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
      name: 'Helios Engenharia Solar',
      address: 'Litecoin',
      cnpj: '42.174.989/0001-37',
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
      name: 'Lumina Solar Solutions',
      address: 'SHIB',
      cnpj: '55.913.370/0001-58',
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
      name: 'SunVolt Serviços',
      address: 'SOL',
      cnpj: '36.627.101/0001-09',
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
      name: 'BlueSky Energia',
      address: 'SUI',
      cnpj: '26.392.745/0001-54',
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
      name: 'SolarWay Integradores',
      address: 'USDT',
      cnpj: '98.142.367/0001-10',
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
      name: 'PowerGreen Engenharia',
      address: 'TON',
      cnpj: '69.801.235/0001-29',
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
      name: 'SolSmart Soluções',
      address: 'LEO',
      cnpj: '04.125.769/0001-44',
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
      name: 'EcoLight Energia',
      address: 'USDS',
      cnpj: '85.671.292/0001-31',
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
      name: 'Aurora Solar Experts',
      address: 'WETH',
      cnpj: '77.301.812/0001-47',
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
      name: 'HelioVolt Instalações',
      address: 'WBTC',
      cnpj: '12.438.576/0001-95',
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
      name: 'SunFlow Energia',
      address: 'WTRX',
      cnpj: '53.870.604/0001-6',
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
      name: 'NovaEnergia Integradores',
      address: 'XRP',
      cnpj: '66.015.398/0001-11',
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
