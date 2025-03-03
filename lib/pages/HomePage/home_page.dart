import 'package:cripto/pages/Settings/Configuracoes_page.dart';
import 'package:cripto/pages/Dashboard/Dashboard.dart';
import 'package:cripto/pages/OrdersPage/Orders_page.dart';
import 'package:cripto/pages/Integrators/Integrators_page.dart';
import 'package:cripto/pages/carteira_page.dart';
import 'package:cripto/pages/products/products_page.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int paginaAtual = 0;
  late PageController pc;

  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: paginaAtual);
  }

  setPaginAtual(pagina) {
    setState(() {
      paginaAtual = pagina;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pc,
        children: [
          HomeScreen(),
          IntegratorsPage(),
          ProductsPage(),
          FavoritasPage(),
          CarteiraPage(),
          ConfiguracoesPage(),
        ],
        onPageChanged: setPaginAtual,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.grey[100]!,
        color: Colors.blueAccent,
        height: 60,
        animationDuration: const Duration(milliseconds: 300),
        index: paginaAtual,
        items: const [
          Icon(Icons.dashboard, size: 30, color: Colors.white),
          Icon(Icons.list, size: 30, color: Colors.white),
          Icon(Icons.production_quantity_limits, size: 30, color: Colors.white),
          Icon(Icons.assignment, size: 30, color: Colors.white),
          Icon(Icons.auto_graph, size: 30, color: Colors.white),
          Icon(Icons.settings, size: 30, color: Colors.white),
        ],
        onTap: (pagina) {
          pc.animateToPage(
            pagina,
            duration: const Duration(milliseconds: 400),
            curve: Curves.ease,
          );
          setPaginAtual(pagina);
        },
      ),
    );
  }
}
