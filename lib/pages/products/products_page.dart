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
  TextEditingController searchController = TextEditingController();
  List<Products> filteredProducts = [];

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
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () async {
            await showSearch(
              context: context,
              delegate: ProductSearchDelegate(products: tabela),
            );
          },
        ),
      ],
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
    filteredProducts = tabela;
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
              child: Image.network(filteredProducts[produto].icone),
            ),
            title: Row(
              children: [
                Text(
                  filteredProducts[produto].name,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            onTap: () => mostrarDetalhes(filteredProducts[produto]),
          );
        },
        padding: const EdgeInsets.all(16),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: filteredProducts.length,
      ),
    );
  }
}

class ProductSearchDelegate extends SearchDelegate {
  final List<Products> products;

  ProductSearchDelegate({required this.products});

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
    final List<Products> result = products
        .where((product) =>
            product.name.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.separated(
      itemCount: result.length,
      itemBuilder: (BuildContext context, int index) {
        final product = result[index];
        return ListTile(
          leading: Image.network(product.icone),
          title: Text(product.name),
          onTap: () {
            close(context, null);
            // Open product details page
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ProdutoDetalhesPage(produto: product),
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
    final List<Products> suggestionList = products
        .where((product) =>
            product.name.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.separated(
      itemCount: suggestionList.length,
      itemBuilder: (BuildContext context, int index) {
        final product = suggestionList[index];
        return ListTile(
          leading: Image.network(product.icone),
          title: Text(product.name),
          onTap: () {
            query = product.name;
            showResults(context);
          },
        );
      },
      separatorBuilder: (_, __) => const Divider(),
    );
  }
}
