import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CarteiraPage extends StatelessWidget {
  const CarteiraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Buscar dados por:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            _buildInputField(label: "Data"),
            _buildInputField(label: "Cidade"),
            const SizedBox(height: 24),
            const Text(
              'Gráfico de Integradores',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            _buildLegendIntegradores(), // Adiciona a legenda
            const SizedBox(height: 16),
            _buildPieChart('Integradores', _loadIntegradoresData(), 'Qtd.'),
            const SizedBox(height: 24),
            const Text(
              'Gráfico de Quantidade de Produtos',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            _buildPieChart('Produtos', _loadProdutosData(), 'Qtd.'),
            const SizedBox(height: 24),
            const Text(
              'Gráfico de Número de Pedidos',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            _buildPieChart('Pedidos', _loadPedidosData(), 'Qtd.'),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField({required String label}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(fontSize: 14),
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }

  // Função para construir a legenda de Integradores
  Widget _buildLegendIntegradores() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        _LegendItem(color: Colors.greenAccent, text: 'Ativo'),
        SizedBox(width: 16),
        _LegendItem(color: Colors.redAccent, text: 'Inativo'),
      ],
    );
  }

  Widget _buildPieChart(
      String label, List<PieChartSectionData> data, String unit) {
    return Stack(
      alignment: Alignment.center,
      children: [
        AspectRatio(
          aspectRatio: 1.2,
          child: PieChart(
            PieChartData(
              sectionsSpace: 5,
              centerSpaceRadius: 60,
              sections: data,
              pieTouchData: PieTouchData(
                touchCallback:
                    (FlTouchEvent event, PieTouchResponse? pieTouchResponse) {
                  // Lógica de toque pode ser expandida aqui
                },
              ),
            ),
          ),
        ),
        Column(
          children: [
            Text(
              label,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.teal,
              ),
            ),
            Text(
              '${_calculateTotal(data).toStringAsFixed(0)} $unit',
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
          ],
        ),
      ],
    );
  }

  double _calculateTotal(List<PieChartSectionData> data) {
    return data.fold(0, (sum, item) => sum + item.value);
  }

  // Mock de dados de Integradores ajustado (Ativo e Inativo)
  List<PieChartSectionData> _loadIntegradoresData() {
    return [
      PieChartSectionData(
        color: Colors.greenAccent,
        value: 70, // Quantidade de integradores ativos
        title: 'Ativo: 70',
        radius: 60.0,
        titleStyle: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      PieChartSectionData(
        color: Colors.redAccent,
        value: 30, // Quantidade de integradores inativos
        title: 'Inativo: 30',
        radius: 60.0,
        titleStyle: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    ];
  }

  List<PieChartSectionData> _loadProdutosData() {
    return [
      PieChartSectionData(
        color: Colors.redAccent,
        value: 150,
        title: '150',
        radius: 60.0,
        titleStyle: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      PieChartSectionData(
        color: Colors.yellowAccent,
        value: 100,
        title: '100',
        radius: 60.0,
        titleStyle: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      PieChartSectionData(
        color: Colors.blueAccent,
        value: 80,
        title: '80',
        radius: 60.0,
        titleStyle: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      PieChartSectionData(
        color: Colors.greenAccent,
        value: 70,
        title: '70',
        radius: 60.0,
        titleStyle: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    ];
  }

  List<PieChartSectionData> _loadPedidosData() {
    return [
      PieChartSectionData(
        color: Colors.pinkAccent,
        value: 500,
        title: '500',
        radius: 60.0,
        titleStyle: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      PieChartSectionData(
        color: Colors.tealAccent,
        value: 300,
        title: '300',
        radius: 60.0,
        titleStyle: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      PieChartSectionData(
        color: Colors.amberAccent,
        value: 200,
        title: '200',
        radius: 60.0,
        titleStyle: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    ];
  }
}

// Classe para construir os itens da legenda
class _LegendItem extends StatelessWidget {
  final Color color;
  final String text;

  const _LegendItem({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 16,
          height: 16,
          color: color,
        ),
        const SizedBox(width: 8),
        Text(
          text,
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
