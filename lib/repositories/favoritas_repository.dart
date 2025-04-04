// import 'dart:collection';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:cripto/database/db_firestore.dart';
// import 'package:cripto/models/Integrators_model.dart';
// import 'package:cripto/repositories/mocks_moedas.dart';
// // import 'package:cripto/repositories/moeda_repository.dart';
// import 'package:cripto/services/auth_service.dart';
// import 'package:flutter/material.dart';

// class FavoritasRepository extends ChangeNotifier {
//   final List<Integrators> _lista = [];
//   late FirebaseFirestore db;
//   late AuthService auth;
//   MoedaRepository moedas;

//   FavoritasRepository({required this.auth, required this.moedas}) {
//     _startRepository();
//   }

//   _startRepository() async {
//     await _startFirestore();
//     await _readFavoritas();
//   }

//   _startFirestore() {
//     db = DbFirestore.get();
//   }

//   _readFavoritas() async {
//     if (auth.user != null && _lista.isEmpty) {
//       final snapshot =
//           await db.collection('products/${auth.user!.uid}/favoritas').get();
//       snapshot.docs.forEach((doc) {
//         Integrators moeda = MoedaRepository.tabela
//             .firstWhere((moeda) => moeda.address == doc.get('sigla'));
//         _lista.add(moeda);
//         notifyListeners();
//       });
//     }
//   }

//   UnmodifiableListView<Integrators> get lista => UnmodifiableListView(_lista);

//   saveAll(List<Integrators> moedas) {
//     moedas.forEach((moeda) async {
//       if (!_lista.any((atual) => atual.address == moeda.address)) {
//         _lista.add(moeda);
//         await db
//             .collection('products/${auth.user!.uid}/favoritas')
//             .doc(moeda.address)
//             .set({
//           'moeda': moeda.name,
//           'sigla': moeda.address,
//           'preco': moeda.cnpj,
//         });
//       }
//     });

//     notifyListeners();
//   }

//   remove(Integrators moeda) async {
//     await db
//         .collection('products/${auth.user!.uid}/favoritas')
//         .doc(moeda.address)
//         .delete();
//     _lista.remove(moeda);
//     notifyListeners();
//   }
// }
