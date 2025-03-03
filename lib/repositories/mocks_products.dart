import 'package:cripto/models/Products_model.dart';

class ProductRepository {
  static List<Products> productList = [
    Products(
      name: 'Inversor Solar 5000W',
      price: '3999.99',
      description:
          'Inversor solar de 5000W com eficiência de 98% e monitoramento remoto.',
      quantity: 10,
      sku: 'INV5000W',
      icone: 'https://i.imgur.com/Nkoh9Ck.png',
    ),
    Products(
      name: 'StringBox Proteção 1000V',
      price: '799.99',
      description:
          'StringBox com proteção contra surtos e seccionamento até 1000V.',
      quantity: 50,
      sku: 'SB1000V',
      icone: 'https://i.imgur.com/Nkoh9Ck.png',
    ),
    Products(
      name: 'Gerador Fotovoltaico 10kW',
      price: '14999.99',
      description:
          'Gerador fotovoltaico com capacidade de 10kW e estrutura de suporte inclusa.',
      quantity: 5,
      sku: 'GFV10KW',
      icone: 'https://i.imgur.com/Nkoh9Ck.png',
    ),
    Products(
      name: 'Painel Solar 450W',
      price: '749.99',
      description:
          'Painel solar de 450W com alta eficiência e resistência ao clima.',
      quantity: 200,
      sku: 'PS450W',
      icone: 'https://i.imgur.com/Nkoh9Ck.png',
    ),
    Products(
      name: 'Controlador de Carga MPPT 60A',
      price: '599.99',
      description:
          'Controlador de carga MPPT com corrente de 60A para otimização de energia.',
      quantity: 40,
      sku: 'CCMPPT60A',
      icone: 'https://i.imgur.com/Nkoh9Ck.png',
    ),
    Products(
      name: 'Bateria Solar 12V 200Ah',
      price: '1299.99',
      description:
          'Bateria solar de lítio 12V 200Ah para armazenamento de energia.',
      quantity: 30,
      sku: 'BS12V200AH',
      icone: 'https://i.imgur.com/Nkoh9Ck.png',
    ),
    Products(
      name: 'Estrutura de Suporte para Painéis',
      price: '499.99',
      description: 'Estrutura de suporte ajustável para painéis solares.',
      quantity: 100,
      sku: 'ESPSOLAR',
      icone: 'https://i.imgur.com/Nkoh9Ck.png',
    ),
    Products(
      name: 'Cabos Fotovoltaicos 6mm²',
      price: '1.99',
      description:
          'Cabos solares de 6mm² para instalação fotovoltaica, vendida por metro.',
      quantity: 1000,
      sku: 'CABO6MM',
      icone: 'https://i.imgur.com/Nkoh9Ck.png',
    ),
    Products(
      name: 'Kit de Ferramentas para Instalação Solar',
      price: '249.99',
      description:
          'Kit completo de ferramentas para instalação de sistemas solares.',
      quantity: 20,
      sku: 'KITFERRSOLAR',
      icone: 'https://i.imgur.com/Nkoh9Ck.png',
    ),
    Products(
      name: 'Medidor de Energia Bidirecional',
      price: '699.99',
      description:
          'Medidor de energia bidirecional para monitoramento de consumo e geração.',
      quantity: 15,
      sku: 'MEDENERBID',
      icone: 'https://i.imgur.com/Nkoh9Ck.png',
    ),
    Products(
      name: 'Inversor Solar 10000W',
      price: '6499.99',
      description: 'Inversor solar de 10000W para grandes instalações.',
      quantity: 8,
      sku: 'INV10000W',
      icone: 'https://i.imgur.com/Nkoh9Ck.png',
    ),
    Products(
      name: 'Kit de Instalação Solar Completo',
      price: '11999.99',
      description:
          'Kit completo para instalação de sistema solar fotovoltaico.',
      quantity: 12,
      sku: 'KITINSTALACAOSOLAR',
      icone: 'https://i.imgur.com/Nkoh9Ck.png',
    ),
    Products(
      name: 'Controlador de Carga PWM 30A',
      price: '299.99',
      description: 'Controlador de carga PWM de 30A para sistemas solares.',
      quantity: 25,
      sku: 'CCPWM30A',
      icone: 'https://i.imgur.com/Nkoh9Ck.png',
    ),
    Products(
      name: 'Painel Solar 300W',
      price: '599.99',
      description: 'Painel solar de 300W com alta eficiência e durabilidade.',
      quantity: 150,
      sku: 'PS300W',
      icone: 'https://i.imgur.com/Nkoh9Ck.png',
    ),
    Products(
      name: 'Bateria de Lítio 24V 100Ah',
      price: '3999.99',
      description: 'Bateria de lítio de 24V e 100Ah para sistemas solares.',
      quantity: 18,
      sku: 'BLITIO24V100AH',
      icone: 'https://i.imgur.com/Nkoh9Ck.png',
    ),
    Products(
      name: 'Estrutura de Montagem para Painéis',
      price: '299.99',
      description: 'Estrutura robusta para montagem de painéis solares.',
      quantity: 90,
      sku: 'EMPAINEL',
      icone: 'https://i.imgur.com/Nkoh9Ck.png',
    ),
    Products(
      name: 'Conector Rápido para Cabos Fotovoltaicos',
      price: '2.49',
      description:
          'Conectores rápidos para cabos fotovoltaicos, vendidos individualmente.',
      quantity: 2000,
      sku: 'CONRAPIDO',
      icone: 'https://i.imgur.com/Nkoh9Ck.png',
    ),
    Products(
      name: 'Gerador Solar 5kW',
      price: '7999.99',
      description:
          'Gerador solar de 5kW, ideal para residências e pequenas empresas.',
      quantity: 7,
      sku: 'GSOLAR5KW',
      icone: 'https://i.imgur.com/Nkoh9Ck.png',
    ),
    Products(
      name: 'Inversor Solar 15000W',
      price: '8999.99',
      description: 'Inversor solar de 15000W para grandes instalações.',
      quantity: 6,
      sku: 'INV15000W',
      icone: 'https://i.imgur.com/Nkoh9Ck.png',
    ),
    Products(
      name: 'Bateria Solar 48V 150Ah',
      price: '8999.99',
      description: 'Bateria solar de 48V 150Ah para grandes sistemas.',
      quantity: 14,
      sku: 'BS48V150AH',
      icone: 'https://i.imgur.com/Nkoh9Ck.png',
    ),
    Products(
      name: 'Kit Solar Residencial 3kW',
      price: '8499.99',
      description: 'Kit fotovoltaico de 3kW para residências.',
      quantity: 10,
      sku: 'KIT3KWRESID',
      icone: 'https://i.imgur.com/Nkoh9Ck.png',
    ),
    Products(
      name: 'Medidor de Consumo de Energia Solar',
      price: '349.99',
      description: 'Medidor de consumo dedicado para sistemas solares.',
      quantity: 30,
      sku: 'MEDCONSOLAR',
      icone: 'https://i.imgur.com/Nkoh9Ck.png',
    ),
  ];
}
