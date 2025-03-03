import 'package:cripto/pages/Settings/Configuracoes_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 50),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text(
                    'Romário Lima',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(color: Colors.white),
                  ),
                  subtitle: Text(
                    'Diretor',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.white54),
                  ),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        AssetImage('lib/assets/images/login_background.png'),
                  ),
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(100)),
              ),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 40,
                mainAxisSpacing: 30,
                children: [
                  itemDashboard(
                    'Filiais',
                    CupertinoIcons.globe,
                    Colors.deepOrange,
                    () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ConfiguracoesPage())),
                  ),
                  itemDashboard(
                    'Graficos',
                    CupertinoIcons.graph_circle,
                    Colors.green,
                    () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ConfiguracoesPage())),
                  ),
                  itemDashboard(
                    'Cadastrar integrador',
                    CupertinoIcons.person_2,
                    Colors.purple,
                    () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ConfiguracoesPage())),
                  ),
                  itemDashboard(
                    'Meu Perfil',
                    CupertinoIcons.person,
                    Colors.brown,
                    () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ConfiguracoesPage())),
                  ),
                  itemDashboard(
                    'Distribuidor',
                    CupertinoIcons.person_2_square_stack,
                    Colors.indigo,
                    () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ConfiguracoesPage())),
                  ),
                  itemDashboard(
                    'Configurações',
                    CupertinoIcons.settings,
                    Colors.teal,
                    () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ConfiguracoesPage())),
                  ),
                  itemDashboard(
                    'Pedidos',
                    CupertinoIcons.square_favorites,
                    Colors.blue,
                    () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ConfiguracoesPage())),
                  ),
                  itemDashboard(
                    'Contato',
                    CupertinoIcons.phone,
                    Colors.pinkAccent,
                    () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ConfiguracoesPage())),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  itemDashboard(String title, IconData iconData, Color background,
          VoidCallback onTap) =>
      InkWell(
        onTap: onTap, // Detecta o toque
        borderRadius: BorderRadius.circular(10), // Adiciona feedback visual
        splashColor: Colors.blue.withOpacity(0.3), // Efeito de splash ao tocar
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 5),
                color: Theme.of(context).primaryColor.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 5,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration:
                    BoxDecoration(color: background, shape: BoxShape.circle),
                child: Icon(
                  iconData,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium,
              )
            ],
          ),
        ),
      );
}
