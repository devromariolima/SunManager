import 'package:cripto/configs/app_setings.dart';
import 'package:cripto/models/Integrators_model.dart';
import 'package:cripto/pages/Integrators_detalhes_page.dart';
import 'package:cripto/repositories/favoritas_repository.dart';
import 'package:cripto/repositories/mocks_moedas.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  late List<Integrators> tabela;
  late NumberFormat real;
  late Map<String, String> loc;
  List<Integrators> selecionadas = [];
  late FavoritasRepository favoritas;
  late MoedaRepository moedas;

  readNumberFormat() {
    loc = context.watch<AppSettings>().locale;
    real = NumberFormat.currency(locale: loc['locale'], name: loc['name']);
  }

  // chageLanguageButton() {
  //   final locale = loc['locale'] == 'pt_BR' ? 'en_US' : 'pt_BR';
  //   final name = loc['locale'] == 'pt_BR' ? '\$' : 'R\$';

  //   return PopupMenuButton(
  //     icon: const Icon(Icons.language),
  //     itemBuilder: (context) => [
  //       PopupMenuItem(
  //         child: ListTile(
  //           leading: const Icon(Icons.swap_vert),
  //           title: Text('Usar $locale'),
  //           onTap: () {
  //             context.read<AppSettings>().setLocale(locale, name);
  //             Navigator.pop(context);
  //           },
  //         ),
  //       ),
  //     ],
  //   );
  // }

  appApbarDinamica() {
    if (selecionadas.isEmpty) {
      return AppBar(
        title: const Text('Estoque'),
        // actions: [chageLanguageButton()],
        centerTitle: true, // Centraliza o título
        backgroundColor: Colors.blue, // Define a cor azul para a AppBar
      );
    } else {
      return AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            setState(() {
              selecionadas = [];
            });
          },
        ),
        title: Text('${selecionadas.length} selecionadas'),
        backgroundColor: Colors.blueGrey[50],
        elevation: 1,
        iconTheme: const IconThemeData(color: Colors.black87),
      );
    }
  }

  mostrarDetalhes(Integrators moeda) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => MoedasDetalhesPage(moeda: moeda),
      ),
    );
  }

  limparSelecionadas() {
    setState(() {
      selecionadas = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    favoritas = Provider.of<FavoritasRepository>(context);
    moedas = Provider.of<MoedaRepository>(context); //verificar depois
    tabela = MoedaRepository.tabela;
    readNumberFormat();
    return Scaffold(
      appBar: appApbarDinamica(),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int moeda) {
          return ListTile(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            leading: (selecionadas.contains(tabela[moeda]))
                ? const CircleAvatar(
                    child: Icon(Icons.check),
                  )
                : SizedBox(
                    width: 40,
                    child: Image.network(tabela[moeda].icone),
                  ),
            title: Row(
              children: [
                Text(
                  tabela[moeda].name,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                if (favoritas.lista.contains(tabela[moeda]))
                  const Icon(Icons.circle, color: Colors.amber, size: 8),
              ],
            ),
            trailing: Text((tabela[moeda].cnpj)),
            selected: selecionadas.contains(tabela[moeda]),
            selectedTileColor: Colors.indigo[50],
            onLongPress: () {
              setState(() {
                (selecionadas.contains(tabela[moeda]))
                    ? selecionadas.remove(tabela[moeda])
                    : selecionadas.add(tabela[moeda]);
              });
            },
            onTap: () => mostrarDetalhes(tabela[moeda]),
          );
        },
        padding: const EdgeInsets.all(16),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: tabela.length,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: selecionadas.isNotEmpty
          ? FloatingActionButton.extended(
              onPressed: () {
                favoritas.saveAll(selecionadas);
                limparSelecionadas();
              },
              icon: const Icon(Icons.star),
              label: const Text('Favoritar',
                  style: TextStyle(
                    letterSpacing: 0,
                    fontWeight: FontWeight.bold,
                  )),
            )
          : null,
    );
  }
}
