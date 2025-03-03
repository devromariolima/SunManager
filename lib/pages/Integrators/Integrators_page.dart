import 'package:cripto/configs/app_setings.dart';
import 'package:cripto/models/Integrators_model.dart';
import 'package:cripto/pages/Integrators/Integrators_detalhes_page.dart';
import 'package:cripto/pages/sidebar/Navbar.dart';
import 'package:cripto/repositories/mocks_integrators.dart';
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
  late IntegratorsRepository integrators;
  late NumberFormat real;
  late Map<String, String> loc;

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
          color: Colors.white,
          fontFamily: 'Roboto',
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.blue,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25))),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () async {
            await showSearch(
              context: context,
              delegate: IntegratorSearchDelegate(integrators: tabela),
            );
          },
        ),
      ],
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return const Align(
                alignment: Alignment.centerLeft,
                child: FractionallySizedBox(
                  widthFactor: 0.8,
                  child: Navbar(),
                ),
              );
            },
          );
        },
      ),
    );
  }

  mostrarDetalhes(Integrators integrator) {
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
          builder: (_) => MoedasDetalhesPage(moeda: integrator),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    integrators = Provider.of<IntegratorsRepository>(context);
    tabela = IntegratorsRepository.tabela;

    readNumberFormat();
    return Scaffold(
      appBar: appApbarDinamica(),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int integrator) {
          final isActive = tabela[integrator]
              .isActive; // Variável que recebe o estado de ativo/inativo
          return ListTile(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            leading: SizedBox(
              width: 40,
              child: Image.network(tabela[integrator].icone),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tabela[integrator].name,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8), // Espaço entre o nome e o CNPJ
                Text(
                  'CNPJ: ${tabela[integrator].cnpj}',
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 8), // Espaço entre o CNPJ e o status
                Text(
                  isActive ? 'Ativo' : 'Inativo', // Exibe "Ativo" ou "Inativo"
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: isActive
                        ? Colors.green
                        : Colors.red, // Verde para ativo, vermelho para inativo
                  ),
                ),
              ],
            ),
            onTap: () => mostrarDetalhes(tabela[integrator]),
          );
        },
        padding: const EdgeInsets.all(16),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: tabela.length,
      ),
    );
  }
}

class IntegratorSearchDelegate extends SearchDelegate {
  final List<Integrators> integrators;

  IntegratorSearchDelegate({required this.integrators});

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final List<Integrators> result = integrators
        .where((integrator) =>
            integrator.name.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.separated(
      itemCount: result.length,
      itemBuilder: (BuildContext context, int index) {
        final integrator = result[index];
        return ListTile(
          leading: Image.network(integrator.icone),
          title: Text(integrator.name),
          onTap: () {
            close(context, null);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => MoedasDetalhesPage(moeda: integrator),
              ),
            );
          },
        );
      },
      separatorBuilder: (_, __) => const Divider(),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<Integrators> suggestionList = integrators
        .where((integrator) =>
            integrator.name.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.separated(
      itemCount: suggestionList.length,
      itemBuilder: (BuildContext context, int index) {
        final integrator = suggestionList[index];
        return ListTile(
          leading: Image.network(integrator.icone),
          title: Text(integrator.name),
          onTap: () {
            query = integrator.name;
            showResults(context);
          },
        );
      },
      separatorBuilder: (_, __) => const Divider(),
    );
  }
}
