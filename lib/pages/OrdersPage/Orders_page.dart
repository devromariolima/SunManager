import 'package:cripto/repositories/mock_orders.dart';
import 'package:flutter/material.dart';
import 'package:cripto/models/orders_model.dart';

class FavoritasPage extends StatefulWidget {
  const FavoritasPage({super.key});

  @override
  State<FavoritasPage> createState() => _FavoritasPageState();
}

class _FavoritasPageState extends State<FavoritasPage> {
  final List<OrdersModel> pedidos = OrdersRepository.pedidos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pedidos',
          style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
            color: Colors.white,
            fontFamily: 'Roboto',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Ação de busca
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.indigo.withOpacity(0.05),
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(12.0),
        child: pedidos.isEmpty
            ? const ListTile(
                leading: Icon(Icons.star),
                title: Text('Ainda não há pedidos favoritos'),
              )
            : ListView.builder(
                itemCount: pedidos.length,
                itemBuilder: (_, index) {
                  final pedido = pedidos[index];
                  return MoedaCard(
                    uid: pedido.uid,
                    valor: pedido.valor,
                    cliente: pedido.cliente,
                    integrador: pedido.integrador,
                    cidade: pedido.cidade,
                  );
                },
              ),
      ),
    );
  }
}

class MoedaCard extends StatelessWidget {
  final String uid;
  final String valor;
  final String cliente;
  final String integrador;
  final String cidade;

  const MoedaCard({
    Key? key,
    required this.uid,
    required this.valor,
    required this.cliente,
    required this.integrador,
    required this.cidade,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 12),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20),
        child: Row(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Numero do pedido: $uid',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Valor do Pedido: $valor',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Cliente: $cliente',
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black45,
                      ),
                    ),
                    Text(
                      'Integrador: $integrador',
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black45,
                      ),
                    ),
                    Text(
                      'Cidade: $cidade',
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
