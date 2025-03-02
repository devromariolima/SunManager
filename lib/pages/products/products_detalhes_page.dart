import 'package:cripto/models/Products_model.dart';
import 'package:flutter/material.dart';

class ProdutoDetalhesPage extends StatefulWidget {
  final Products produto;

  const ProdutoDetalhesPage({super.key, required this.produto});

  @override
  State<ProdutoDetalhesPage> createState() => _ProdutoDetalhesPageState();
}

class _ProdutoDetalhesPageState extends State<ProdutoDetalhesPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nomeProduto = TextEditingController();
  final TextEditingController _sku = TextEditingController();
  final TextEditingController _preco = TextEditingController();
  final TextEditingController _descricao = TextEditingController();
  final TextEditingController _quantidade = TextEditingController();
  final TextEditingController _categoria = TextEditingController();
  bool _isActive = false;

  @override
  void initState() {
    super.initState();
    _nomeProduto.text = widget.produto.name;
    _sku.text = widget.produto.sku;
    _preco.text = widget.produto.price.toString();
    _descricao.text = widget.produto.description;
    _quantidade.text = widget.produto.quantity.toString();
    _isActive = true;
    _categoria.text = 'Energia Solar';
  }

  void salvar() {
    if (_formKey.currentState!.validate()) {
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Produto salvo com sucesso')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.produto.name)),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            _buildForm(),
            _buildSalvarButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _nomeProduto,
            style: const TextStyle(fontSize: 22),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Nome do Produto',
              prefixIcon: Icon(Icons.device_hub),
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: _sku,
            style: const TextStyle(fontSize: 22),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'SKU',
              prefixIcon: Icon(Icons.tag),
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: _preco,
            style: const TextStyle(fontSize: 22),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Preço',
              prefixIcon: Icon(Icons.attach_money),
            ),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: _descricao,
            style: const TextStyle(fontSize: 22),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Descrição',
              prefixIcon: Icon(Icons.description),
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: _quantidade,
            style: const TextStyle(fontSize: 22),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Quantidade',
              prefixIcon: Icon(Icons.add_shopping_cart),
            ),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: _categoria,
            style: const TextStyle(fontSize: 22),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Categoria',
              prefixIcon: Icon(Icons.category),
            ),
            readOnly: true,
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
                    'Produto Ativo',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSalvarButton() {
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
