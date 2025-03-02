import 'package:cripto/models/Products_model.dart';

class ProductRepository {
  static List<Products> productList = [
    Products(
      name: 'Inversor Solar 5000W',
      price: 3999.99,
      description:
          'Inversor solar de 5000W com eficiência de 98% e monitoramento remoto.',
      quantity: 10,
      sku: 'INV5000W',
    ),
    Products(
      name: 'StringBox Proteção 1000V',
      price: 799.99,
      description:
          'StringBox com proteção contra surtos e seccionamento até 1000V.',
      quantity: 50,
      sku: 'SB1000V',
    ),
    Products(
      name: 'Gerador Fotovoltaico 10kW',
      price: 14999.99,
      description:
          'Gerador fotovoltaico com capacidade de 10kW e estrutura de suporte inclusa.',
      quantity: 5,
      sku: 'GFV10KW',
    ),
    Products(
      name: 'Painel Solar 450W',
      price: 749.99,
      description:
          'Painel solar de 450W com alta eficiência e resistência ao clima.',
      quantity: 200,
      sku: 'PS450W',
    ),
    Products(
      name: 'Controlador de Carga MPPT 60A',
      price: 599.99,
      description:
          'Controlador de carga MPPT com corrente de 60A para otimização de energia.',
      quantity: 40,
      sku: 'CCMPPT60A',
    ),
    Products(
      name: 'Bateria Solar 12V 200Ah',
      price: 1299.99,
      description:
          'Bateria solar de lítio 12V 200Ah para armazenamento de energia.',
      quantity: 30,
      sku: 'BS12V200AH',
    ),
    Products(
      name: 'Estrutura de Suporte para Painéis',
      price: 499.99,
      description: 'Estrutura de suporte ajustável para painéis solares.',
      quantity: 100,
      sku: 'ESPSOLAR',
    ),
    Products(
      name: 'Cabos Fotovoltaicos 6mm²',
      price: 1.99,
      description:
          'Cabos solares de 6mm² para instalação fotovoltaica, vendida por metro.',
      quantity: 1000,
      sku: 'CABO6MM',
    ),
    Products(
      name: 'Kit de Ferramentas para Instalação Solar',
      price: 249.99,
      description:
          'Kit completo de ferramentas para instalação de sistemas solares.',
      quantity: 20,
      sku: 'KITFERRSOLAR',
    ),
    Products(
      name: 'Medidor de Energia Bidirecional',
      price: 699.99,
      description:
          'Medidor de energia bidirecional para monitoramento de consumo e geração.',
      quantity: 15,
      sku: 'MEDENERBID',
    ),
  ];
}
