import 'package:flutter/material.dart';

class MoedaCard extends StatelessWidget {
  final String nome;
  final String icone;
  final String endereco;
  final String cnpj;

  MoedaCard({
    Key? key,
    required this.nome,
    required this.icone,
    required this.endereco,
    required this.cnpj,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // Utilizando SingleChildScrollView para scroll
      child: Card(
        margin: const EdgeInsets.only(top: 12),
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20),
          child: Row(
            children: [
              Image.network(
                icone,
                height: 40,
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        nome,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        endereco,
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.indigo.withOpacity(0.05),
                  border: Border.all(
                    color: Colors.indigo.withOpacity(0.4),
                  ),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Text(
                  cnpj,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.indigo,
                    letterSpacing: -1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
