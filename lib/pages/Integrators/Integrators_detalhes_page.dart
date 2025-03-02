import 'package:cripto/models/Integrators_model.dart';
import 'package:flutter/material.dart';

class MoedasDetalhesPage extends StatefulWidget {
  final Integrators moeda;

  const MoedasDetalhesPage({super.key, required this.moeda});

  @override
  State<MoedasDetalhesPage> createState() => _MoedasDetalhesPageState();
}

class _MoedasDetalhesPageState extends State<MoedasDetalhesPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nomeEmpresa = TextEditingController();
  final TextEditingController _taxId = TextEditingController();
  final TextEditingController _city = TextEditingController();
  final TextEditingController _address = TextEditingController();
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _observation = TextEditingController();
  bool _isActive = false;

  double quantidade = 0;
  Widget grafico = Container();
  bool graficoLoaded = false;

  @override
  void initState() {
    super.initState();
    _nomeEmpresa.text = widget.moeda.name;
    _taxId.text = widget.moeda.cnpj;
    _city.text = widget.moeda.city;
    _address.text = widget.moeda.address;
    _phone.text = widget.moeda.phone;
    _email.text = widget.moeda.email;
    _isActive = widget.moeda.isActive;
    _observation.text = widget.moeda.observation;
  }

  void salvar() {
    if (_formKey.currentState!.validate()) {
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Cadastro Salvo')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
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
            controller: _phone,
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
            controller: _email,
            style: const TextStyle(fontSize: 22),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'E-mail',
              prefixIcon: Icon(Icons.email),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: _isActive,
                    onChanged: (bool? value) {
                      setState(() {
                        _isActive = value ?? false;
                      });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    activeColor: Colors.blue,
                    checkColor: Colors.white,
                    side: BorderSide(
                      color: Colors.grey.shade400,
                      width: 2,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Cadastro Ativo',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Observações:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _observation,
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: 'Digite suas observações aqui...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildComprarButton() {
    return Container(
      alignment: Alignment.bottomCenter,
      margin: const EdgeInsets.only(top: 24),
      child: ElevatedButton(
        onPressed: salvar,
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
