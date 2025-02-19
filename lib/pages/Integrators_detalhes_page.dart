import 'package:cripto/models/Integrators_model.dart';
import 'package:cripto/repositories/conta_repository.dart';
// import 'package:cripto/widget/grafico_historico.dart';
import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class MoedasDetalhesPage extends StatefulWidget {
  final Integrators moeda;

  const MoedasDetalhesPage({super.key, required this.moeda});

  @override
  State<MoedasDetalhesPage> createState() => _MoedasDetalhesPageState();
}

class _MoedasDetalhesPageState extends State<MoedasDetalhesPage> {
  // final NumberFormat real = NumberFormat.currency(locale: 'pt_BR', name: 'R\$');
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _valor = TextEditingController();
  final TextEditingController _nomeEmpresa = TextEditingController();
  final TextEditingController _taxId = TextEditingController();
  final TextEditingController _city = TextEditingController();
  final TextEditingController _address = TextEditingController();
  double quantidade = 0;
  late ContaRepository conta;
  Widget grafico = Container();
  bool graficoLoaded = false;

  @override
  void initState() {
    super.initState();
    _nomeEmpresa.text = widget.moeda.name;
    _taxId.text = widget.moeda.cnpj; // Preenchendo o campo com o nome da moeda
    _city.text = widget.moeda.city;
    _address.text = widget.moeda.address;
  }

  // Widget getGrafico() {
  //   if (!graficoLoaded) {
  //     grafico = GraficoHistorico(moeda: widget.moeda);
  //     graficoLoaded = true;
  //   }
  //   return grafico;
  // }

  void comprar() {
    if (_formKey.currentState!.validate()) {
      conta.comprar(widget.moeda, double.parse(_valor.text));
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Compra realizada com sucesso')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    conta = Provider.of<ContaRepository>(context, listen: false);

    return Scaffold(
      appBar: AppBar(title: Text(widget.moeda.name)),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            // _buildHeader(),
            // getGrafico(),
            _buildQuantidadeInfo(),
            _buildForm(),
            _buildComprarButton(),
          ],
        ),
      ),
    );
  }

  // Widget _buildHeader() {
  //   return Padding(
  //     padding: const EdgeInsets.only(bottom: 24),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       crossAxisAlignment: CrossAxisAlignment.center,
  //       children: [
  //         Image.network(widget.moeda.icone, scale: 2.5),
  //         const SizedBox(width: 10),
  //         Text(
  //           real.format(widget.moeda.preco),
  //           style: TextStyle(
  //             fontSize: 26,
  //             fontWeight: FontWeight.w600,
  //             letterSpacing: -1,
  //             color: Colors.grey[800],
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Widget _buildQuantidadeInfo() {
    return (quantidade > 0)
        ? Container(
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 24),
            padding: const EdgeInsets.all(12),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.teal.withOpacity(0.05),
            ),
            child: Text(
              '$quantidade ${widget.moeda.address}',
              style: const TextStyle(fontSize: 20, color: Colors.teal),
            ),
          )
        : const SizedBox(height: 24);
  }

  Widget _buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _nomeEmpresa,
            style: const TextStyle(fontSize: 22),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Nome da Empresa',
              prefixIcon: Icon(Icons.business),
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: _taxId,
            style: const TextStyle(fontSize: 22),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'CNPJ',
              prefixIcon: Icon(Icons.badge),
            ),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: _city,
            style: const TextStyle(fontSize: 22),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Cidade',
              prefixIcon: Icon(Icons.location_city),
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: _address,
            style: const TextStyle(fontSize: 22),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Endereço',
              prefixIcon: Icon(Icons.location_on),
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            style: const TextStyle(fontSize: 22),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Telefone',
              prefixIcon: Icon(Icons.phone),
            ),
            keyboardType: TextInputType.phone,
          ),
          const SizedBox(height: 10),
          TextFormField(
            style: const TextStyle(fontSize: 22),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'E-mail',
              prefixIcon: Icon(Icons.email),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
        ],
      ),
    );
  }

  Widget _buildComprarButton() {
    return Container(
      alignment: Alignment.bottomCenter,
      margin: const EdgeInsets.only(top: 24),
      child: ElevatedButton(
        onPressed: comprar,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Salvar',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
