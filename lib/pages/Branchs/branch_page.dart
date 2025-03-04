import 'package:cripto/configs/app_setings.dart';
import 'package:cripto/models/branch_model.dart';
import 'package:cripto/pages/Branchs/branch_detalhes_page.dart';
import 'package:cripto/repositories/mock_branch.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class BranchPage extends StatefulWidget {
  const BranchPage({super.key});

  @override
  State<BranchPage> createState() => _BranchPageState();
}

class _BranchPageState extends State<BranchPage> {
  late List<BranchModel> tabela;
  late BranchRepository branch;
  late NumberFormat real;
  late Map<String, String> loc;

  readNumberFormat() {
    loc = context.watch<AppSettings>().locale;
    real = NumberFormat.currency(locale: loc['locale'], name: loc['name']);
  }

  appApbarDinamica() {
    return AppBar(
      title: const Text(
        'Filiais',
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
              delegate: IntegratorSearchDelegate(branch: tabela),
            );
          },
        ),
      ],
      // Exibindo o ícone de voltar apenas se não for a primeira tela da pilha de navegação
      leading: ModalRoute.of(context)!.isFirst ||
              !Navigator.of(context).canPop()
          ? null // Não exibe o ícone de voltar se for a primeira tela ou não for possível voltar
          : IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context); // Voltar para a tela anterior
              },
            ),
    );
  }

  mostrarDetalhes(BranchModel branch) {
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
          builder: (_) => BranchDetalhesPage(branch: branch),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    branch = Provider.of<BranchRepository>(context);
    tabela = BranchRepository.filiais;

    readNumberFormat();
    return Scaffold(
      appBar: appApbarDinamica(),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int branch) {
          final isActive = tabela[branch]
              .isActive; // Variável que recebe o estado de ativo/inativo
          return ListTile(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            // leading: SizedBox(
            //   width: 40,
            //   child: Image.network(tabela[branch].icone),
            // ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tabela[branch].name,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'CNPJ: ${tabela[branch].cnpj}',
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  isActive ? 'Ativo' : 'Inativo',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: isActive ? Colors.green : Colors.red,
                  ),
                ),
              ],
            ),
            onTap: () => mostrarDetalhes(tabela[branch]),
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
  final List<BranchModel> branch;

  IntegratorSearchDelegate({required this.branch});

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
    final List<BranchModel> result = branch
        .where(
            (branch) => branch.name.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.separated(
      itemCount: result.length,
      itemBuilder: (BuildContext context, int index) {
        final branch = result[index];
        return ListTile(
          // leading: Image.network(branch.icone),
          title: Text(branch.name),
          onTap: () {
            close(context, null);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => BranchDetalhesPage(branch: branch),
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
    final List<BranchModel> suggestionList = branch
        .where(
            (branch) => branch.name.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.separated(
      itemCount: suggestionList.length,
      itemBuilder: (BuildContext context, int index) {
        final branch = suggestionList[index];
        return ListTile(
          // leading: Image.network(branch.icone),
          title: Text(branch.name),
          onTap: () {
            query = branch.name;
            showResults(context);
          },
        );
      },
      separatorBuilder: (_, __) => const Divider(),
    );
  }
}
