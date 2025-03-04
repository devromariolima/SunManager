import 'package:cripto/models/branch_model.dart';

class BranchRepository {
  static List<BranchModel> filiais = [
    BranchModel(
      uid: '1',
      name: 'Filial São Paulo',
      address: 'Av. Paulista, 1000',
      city: 'São Paulo',
      zipcode: '01310-100',
      cnpj: '12.345.678/0001-01',
      icone: 'sp_icon.png',
      phone: '(11) 1234-5678',
      email: 'sp@empresa.com',
      isActive: true,
      observation: 'Filial principal',
      serviceregion: 'SP',
    ),
    BranchModel(
      uid: '2',
      name: 'Filial Rio de Janeiro',
      address: 'Rua Copacabana, 200',
      city: 'Rio de Janeiro',
      zipcode: '22050-001',
      cnpj: '23.456.789/0001-02',
      icone: 'rj_icon.png',
      phone: '(21) 9876-5432',
      email: 'rj@empresa.com',
      isActive: true,
      observation: 'Filial na praia',
      serviceregion: 'RJ',
    ),
    BranchModel(
      uid: '3',
      name: 'Filial Belo Horizonte',
      address: 'Av. Afonso Pena, 300',
      city: 'Belo Horizonte',
      zipcode: '30130-001',
      cnpj: '34.567.890/0001-03',
      icone: 'bh_icon.png',
      phone: '(31) 5555-5555',
      email: 'bh@empresa.com',
      isActive: true,
      observation: 'Filial no centro',
      serviceregion: 'MG',
    ),
    BranchModel(
      uid: '4',
      name: 'Filial Curitiba',
      address: 'Rua das Flores, 400',
      city: 'Curitiba',
      zipcode: '80010-010',
      cnpj: '45.678.901/0001-04',
      icone: 'curitiba_icon.png',
      phone: '(41) 3333-3333',
      email: 'curitiba@empresa.com',
      isActive: false,
      observation: 'Filial temporariamente fechada',
      serviceregion: 'PR',
    ),
    BranchModel(
      uid: '5',
      name: 'Filial Porto Alegre',
      address: 'Av. Borges de Medeiros, 500',
      city: 'Porto Alegre',
      zipcode: '90010-150',
      cnpj: '56.789.012/0001-05',
      icone: 'poa_icon.png',
      phone: '(51) 4444-4444',
      email: 'poa@empresa.com',
      isActive: true,
      observation: 'Filial no sul',
      serviceregion: 'RS',
    ),
  ];

  List<BranchModel> buscarFiliaisPorCidade(String cidade) {
    return filiais.where((filial) {
      return filial.city.toLowerCase().contains(cidade.toLowerCase());
    }).toList();
  }
}
