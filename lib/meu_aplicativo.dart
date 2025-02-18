// import 'package:cripto/pages/home_page.dart';
import 'package:cripto/widget/auth_check.dart';
// import 'package:cripto/pages/moedas_page.dart';
import 'package:flutter/material.dart';

class MeuAplicativo extends StatelessWidget {
  const MeuAplicativo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moedasbase',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AuthCheck(
        
      ),
    );
  }
}