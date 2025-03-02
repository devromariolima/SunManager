import 'package:cripto/configs/app_setings.dart';
import 'package:cripto/models/Integrators_model.dart';
import 'package:cripto/pages/Integrators/Integrators_detalhes_page.dart';
import 'package:cripto/pages/sidebar/Navbar.dart';
import 'package:cripto/repositories/mocks_moedas.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class IntegratorsPage extends StatefulWidget {
  const IntegratorsPage({super.key});

  @override
  State<IntegratorsPage> createState() => _IntegratorsPageState();
}

class _IntegratorsPageState extends State<IntegratorsPage> {
  late List<Integrators> tabela;
  late List<Integrators> filteredTabela;
  late NumberFormat real;
  late Map<String, String> loc;
  late IntegratorsRepository moedas;
  TextEditingController searchController = TextEditingController();

  readNumberFormat() {
    loc = context.watch<AppSettings>().locale;
    real = NumberFormat.currency(locale: loc['locale'], name: loc['name']);
  }

  appApbarDinamica() {
    return AppBar(
      title: const Text(
        'Integradores',
        style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
          color: Colors.black,
          fontFamily: 'Roboto',
        ),
      ),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: () {},
        ),
      ],
      backgroundColor: Colors.blue,
      leading: IconButton(
          onPressed: () {},
          icon: IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const Align(
                      alignment: Alignment.centerLeft,
                      child: FractionallySizedBox(
                        widthFactor: 0.8, //
                        child: Navbar(),
                      ),
                    );
                  },
                );
              },
              icon: const Icon(Icons.menu))),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25))),
    );
  }

  mostrarDetalhes(Integrators moeda) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pop(context);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => MoedasDetalhesPage(moeda: moeda),
        ),
      );
    });
  }

  void _filterTabela(String query) {
    setState(() {
      filteredTabela = tabela.where((integrator) {
        return integrator.name.toLowerCase().contains(query.toLowerCase());
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    moedas = Provider.of<IntegratorsRepository>(context);
    tabela = IntegratorsRepository.tabela;

    filteredTabela = tabela;

    readNumberFormat();

    return Scaffold(
      appBar: appApbarDinamica(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: searchController,
              onChanged: (query) {
                _filterTabela(query);
              },
              decoration: InputDecoration(
                labelText: 'Buscar Integrador',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          Expanded(
            child: filteredTabela.isEmpty
                ? const Center(child: Text('Nenhum integrador encontrado.'))
                : ListView.separated(
                    itemBuilder: (BuildContext context, int moeda) {
                      return ListTile(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        leading: SizedBox(
                          width: 40,
                          child: Image.network(filteredTabela[moeda].icone),
                        ),
                        title: Row(
                          children: [
                            Text(
                              filteredTabela[moeda].name,
                              style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        trailing: Text((filteredTabela[moeda].cnpj)),
                        onTap: () => mostrarDetalhes(filteredTabela[moeda]),
                      );
                    },
                    padding: const EdgeInsets.all(16),
                    separatorBuilder: (_, __) => const Divider(),
                    itemCount: filteredTabela.length,
                  ),
          ),
        ],
      ),
    );
  }
}
