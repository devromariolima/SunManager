import 'package:flutter/material.dart';

class SidebarPage extends StatelessWidget {
  const SidebarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sidebar'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return const Align(
                  alignment: Alignment.centerLeft,
                  child: FractionallySizedBox(
                    widthFactor: 0.5,
                    child: Navbar(),
                  ),
                );
              },
            );
          },
        ),
      ),
      body: const Center(
        child: Text('Conteúdo principal'),
      ),
    );
  }
}

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage(
                  'https://i.imgur.com/NGhnENa.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            padding:
                const EdgeInsets.only(top: 40, left: 16, right: 16, bottom: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      child: ClipOval(
                        child: Image.network(
                          'https://i.imgur.com/Yc2rTg4.png',
                          width: 90,
                          height: 90,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Romário Lima',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Diretor',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Devromariolima@gmail.com',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close, color: Colors.white),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.list),
            title: const Text('Integradores'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.production_quantity_limits),
            title: const Text('Estoque'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text('Favoritos'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.auto_graph),
            title: const Text('Gráficos'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Notificações'),
            onTap: () {},
            trailing: ClipOval(
              child: Container(
                color: Colors.red,
                width: 20,
                height: 20,
                child: const Center(
                  child: Text('8',
                      style: TextStyle(color: Colors.white, fontSize: 12)),
                ),
              ),
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Sair'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
