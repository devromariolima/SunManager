import 'dart:math';
import 'package:cripto/models/Integrators_model.dart';

class MoedaRepository {
  static List<Integrators> tabela = [
    Integrators(
      name: 'Solarium Tech',
      address: 'Rua das Flores, 4956',
      city: 'Porto Alegre',
      zipcode: '16721-625',
      cnpj: '79.740.522/0001-93',
      icone: 'https://i.imgur.com/V45bRQq.png',
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
      name: 'EnerSun Integradores',
      address: 'Rua Augusta, 1914',
      city: 'Rio de Janeiro',
      zipcode: '51060-281',
      cnpj: '94.512.358/0001-40',
      icone: 'https://i.imgur.com/ICEbb90.png',
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
      name: 'BrightVolt Energia',
      address: 'Avenida Faria Lima, 8642',
      city: 'Rio de Janeiro',
      zipcode: '40805-144',
      cnpj: '47.108.417/0001-61',
      icone: 'https://i.imgur.com/p5LOBMG.png',
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
      name: 'Solaris Soluções',
      address: 'Avenida Ipiranga, 2101',
      city: 'Porto Alegre',
      zipcode: '83073-465',
      cnpj: '23.518.093/0001-71',
      icone: 'https://i.imgur.com/NCSAD6h.png',
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
      name: 'EcoSun Engenharia',
      address: 'Avenida Paulista, 3998',
      city: 'Curitiba',
      zipcode: '14957-660',
      cnpj: '60.903.619/0001-32',
      icone: 'https://i.imgur.com/ikeUlJl.png',
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
      name: 'Photon Power',
      address: 'Avenida Ipiranga, 4423',
      city: 'Brasília',
      zipcode: '47801-322',
      cnpj: '09.471.322/0001-88',
      icone: 'https://i.imgur.com/4455dEw.png',
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
      name: 'SolTech Renováveis',
      address: 'Avenida Faria Lima, 4539',
      city: 'Recife',
      zipcode: '27734-361',
      cnpj: '30.173.681/0001-70',
      icone: 'https://i.imgur.com/YKdWmqq.png',
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
      name: 'Verde Luz Sistemas',
      address: 'Rua Augusta, 6408',
      city: 'Brasília',
      zipcode: '69893-802',
      cnpj: '82.649.476/0001-20',
      icone: 'https://i.imgur.com/J9Yd5Sr.png',
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
      name: 'Helios Engenharia Solar',
      address: 'Avenida Faria Lima, 371',
      city: 'Recife',
      zipcode: '84608-4834',
      cnpj: '42.174.989/0001-37',
      icone: 'https://i.imgur.com/HbzqG0p.png',
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
      name: 'Lumina Solar Solutions',
      address: 'Alameda Santos, 875',
      city: 'Belo Horizonte',
      zipcode: '69864-353',
      cnpj: '55.913.370/0001-58',
      icone: 'https://i.imgur.com/CumXwMQ.png',
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
      name: 'SunVolt Serviços',
      address: 'Avenida Rio Branco, 2390',
      city: 'Curitiba',
      cnpj: '36.627.101/0001-09',
      zipcode: '83780-141',
      icone: 'https://i.imgur.com/HgIoRC1.png',
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
      name: 'BlueSky Energia',
      address: 'Rua 25 de Março, 1349',
      city: 'Belo Horizonte ',
      zipcode: '63414-901',
      cnpj: '26.392.745/0001-54',
      icone: 'https://i.imgur.com/Wu9UNH9.png',
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
      name: 'SolarWay Integradores',
      address: 'Avenida Rio Branco, 6835',
      city: 'Fortaleza',
      zipcode: '67005-231',
      cnpj: '98.142.367/0001-10',
      icone: 'https://i.imgur.com/3SDQd15.png',
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
      name: 'PowerGreen Engenharia',
      address: 'Alameda Santos, 581',
      city: 'Porto Alegre',
      zipcode: '58909-705',
      cnpj: '69.801.235/0001-29',
      icone: 'https://i.imgur.com/GIRHKI4.png',
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
      name: 'SolSmart Soluções',
      address: 'Avenida Ipiranga, 899',
      city: 'Rio de Janeiro',
      zipcode: '85981-860',
      cnpj: '04.125.769/0001-44',
      icone: 'https://i.imgur.com/EgBiNHF.png',
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
      name: 'EcoLight Energia',
      address: 'Rua 25 de Março, 9804',
      city: 'Porto Alegre',
      zipcode: '66552-899',
      cnpj: '85.671.292/0001-31',
      icone: 'https://i.imgur.com/6v5Wlpd.jpg',
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
      name: 'Aurora Solar Experts',
      address: 'Avenida Rio Branco, 4523',
      city: 'Salvador',
      zipcode: '38437-955',
      cnpj: '77.301.812/0001-47',
      icone: 'https://i.imgur.com/Wz5FLNC.png',
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
      name: 'HelioVolt Instalações',
      address: 'Rua dos Andradas, 6901',
      city: 'Recife',
      zipcode: '57395-192',
      cnpj: '12.438.576/0001-95',
      icone: 'https://i.imgur.com/G0AzDls.png',
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
      name: 'SunFlow Energia',
      address: 'Avenida Rio Branco, 514 ',
      city: 'Belo Horizonte',
      zipcode: '86316-733',
      cnpj: '53.870.604/0001-6',
      icone: 'https://i.imgur.com/rS1EFZU.png',
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
      name: 'NovaEnergia Integradores',
      address: 'Rua dos Andradas, 3913',
      city: 'Brasília',
      zipcode: '15205-195',
      cnpj: '66.015.398/0001-11',
      icone: 'https://i.imgur.com/ULtju8G.png',
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
