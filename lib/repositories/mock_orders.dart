import 'package:cripto/models/orders_model.dart';

class OrdersRepository {
  static List<OrdersModel> pedidos = [
    OrdersModel(
      uid: 'ESF-20002',
      valor: 'R\$ 10.000,00',
      cliente: 'João Silva',
      integrador: 'Solarium Tech',
      cidade: 'Porto Alegre',
    ),
    OrdersModel(
      uid: 'ESF-0002',
      valor: 'R\$ 15.500,00',
      cliente: 'Maria Souza',
      integrador: 'EnerSun Integradores',
      cidade: 'Rio de Janeiro',
    ),
    OrdersModel(
      uid: 'ESF-20992',
      valor: 'R\$ 12.300,00',
      cliente: 'Carlos Oliveira',
      integrador: 'BrightVolt Energia',
      cidade: 'Rio de Janeiro',
    ),
    OrdersModel(
      uid: 'ESF-12002',
      valor: 'R\$ 9.750,00',
      cliente: 'Ana Costa',
      integrador: 'Solaris Soluções',
      cidade: 'Porto Alegre',
    ),
    OrdersModel(
      uid: 'ESF-26702',
      valor: 'R\$ 22.100,00',
      cliente: 'Pedro Martins',
      integrador: 'EcoSun Engenharia',
      cidade: 'Curitiba',
    ),
    OrdersModel(
      uid: 'ESF-88002',
      valor: 'R\$ 18.600,00',
      cliente: 'Fernanda Lima',
      integrador: 'Photon Power',
      cidade: 'Brasília',
    ),
    OrdersModel(
      uid: 'ESF-87702',
      valor: 'R\$ 11.200,00',
      cliente: 'Lucas Pereira',
      integrador: 'SolTech Renováveis',
      cidade: 'Recife',
    ),
    OrdersModel(
      uid: 'ESF-67002',
      valor: 'R\$ 13.750,00',
      cliente: 'Paulo Santos',
      integrador: 'Verde Luz Sistemas',
      cidade: 'Brasília',
    ),
    OrdersModel(
      uid: 'ESF-98002',
      valor: 'R\$ 20.500,00',
      cliente: 'Cláudia Almeida',
      integrador: 'Helios Engenharia Solar',
      cidade: 'Recife',
    ),
    OrdersModel(
      uid: 'ESF-56002',
      valor: 'R\$ 25.000,00',
      cliente: 'Roberto Dias',
      integrador: 'Lumina Solar Solutions',
      cidade: 'Belo Horizonte',
    ),
  ];

  List<OrdersModel> buscarPedidosPorCliente(String nomeCliente) {
    return pedidos.where((pedido) {
      return pedido.cliente.toLowerCase().contains(nomeCliente.toLowerCase());
    }).toList();
  }
}
