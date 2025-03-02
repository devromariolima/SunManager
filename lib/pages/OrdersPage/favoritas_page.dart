import 'package:flutter/material.dart';

class FavoritasPage extends StatefulWidget {
  const FavoritasPage({super.key});

  @override
  State<FavoritasPage> createState() => _FavoritasPageState();
}

class _FavoritasPageState extends State<FavoritasPage> {
  // Mock de dados para os pedidos
  final List<Map<String, String>> pedidos = [
    {
      'valor': 'R\$ 12.500,00',
      'cliente': 'João Silva',
      'integrador': 'Energia Solar Ltda.',
      'cidade': 'São Paulo'
    },
    {
      'valor': 'R\$ 8.750,00',
      'cliente': 'Maria Oliveira',
      'integrador': 'SolarTech',
      'cidade': 'Rio de Janeiro'
    },
    {
      'valor': 'R\$ 15.000,00',
      'cliente': 'Carlos Souza',
      'integrador': 'EcoSolar',
      'cidade': 'Belo Horizonte'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pedidos Favoritos'),
        backgroundColor: Colors.blue,
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
                    valor: pedido['valor']!,
                    cliente: pedido['cliente']!,
                    integrador: pedido['integrador']!,
                    cidade: pedido['cidade']!,
                  );
                },
              ),
      ),
    );
  }
}

class MoedaCard extends StatelessWidget {
  final String valor;
  final String cliente;
  final String integrador;
  final String cidade;

  MoedaCard({
    Key? key,
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
