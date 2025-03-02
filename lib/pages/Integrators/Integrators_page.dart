import 'package:cripto/configs/app_setings.dart';
import 'package:cripto/models/Integrators_model.dart';
import 'package:cripto/pages/Integrators/Integrators_detalhes_page.dart';
import 'package:cripto/pages/sidebar/Navbar.dart';
import 'package:cripto/repositories/mocks_moedas.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class MoedasPage extends StatefulWidget {
  const MoedasPage({super.key});

  @override
  State<MoedasPage> createState() => _MoedasPageState();
}

class _MoedasPageState extends State<MoedasPage> {
  late List<Integrators> tabela;
  late NumberFormat real;
  late Map<String, String> loc;
  List<Integrators> selecionadas = [];
  late MoedaRepository moedas;

  readNumberFormat() {
    loc = context.watch<AppSettings>().locale;
    real = NumberFormat.currency(locale: loc['locale'], name: loc['name']);
  }

  appApbarDinamica() {
    if (selecionadas.isEmpty) {
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

  limparSelecionadas() {
    setState(() {
      selecionadas = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    // favoritas = Provider.of<FavoritasRepository>(context);
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
                // if (favoritas.lista.contains(tabela[moeda]))
                //   const Icon(Icons.circle, color: Colors.amber, size: 8),
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
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: selecionadas.isNotEmpty
      //     ? FloatingActionButton.extended(
      //         onPressed: () {
      //           favoritas.saveAll(selecionadas);
      //           limparSelecionadas();
      //         },
      //         icon: const Icon(Icons.star),
      //         label: const Text('Favoritar',
      //             style: TextStyle(
      //               letterSpacing: 0,
      //               fontWeight: FontWeight.bold,
      //             )),
      //       )
      //     : null,
    );
  }
}
