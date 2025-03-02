import 'package:cripto/configs/app_setings.dart';
import 'package:cripto/models/Products_model.dart';
import 'package:cripto/pages/products/products_detalhes_page.dart';
import 'package:cripto/repositories/mocks_products.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({
    super.key,
  });

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  late List<Products> tabela;
  late NumberFormat real;
  late Map<String, String> loc;
  late ProductRepository productList;

  readNumberFormat() {
    loc = context.watch<AppSettings>().locale;
    real = NumberFormat.currency(locale: loc['locale'], name: loc['name']);
  }

  appApbarDinamica() {
    return AppBar(
      title: const Text(
        'Estoque',
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
    );
  }

  mostrarDetalhes(Products products) {
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
          builder: (_) => ProdutoDetalhesPage(produto: products),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    productList = Provider.of<ProductRepository>(context);
    tabela = ProductRepository.productList;
    readNumberFormat();
    return Scaffold(
      appBar: appApbarDinamica(),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int produto) {
          return ListTile(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            leading: SizedBox(
              width: 40,
              child: Image.network(tabela[produto].icone),
            ),
            title: Row(
              children: [
                Text(
                  tabela[produto].name,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            onTap: () => mostrarDetalhes(tabela[produto]),
          );
        },
        padding: const EdgeInsets.all(16),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: tabela.length,
      ),
    );
  }
}
