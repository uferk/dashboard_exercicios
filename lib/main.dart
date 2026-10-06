import 'package:flutter/material.dart';
import 'widgets/bloco_estatistica.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard de Observações',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
        ),
        useMaterial3: true,
      ),
      home: const TelaDashboard(),
    );
  }
}

class TelaDashboard extends StatelessWidget {
  const TelaDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard de Observações'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Resumo',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 16),

            // EXERCÍCIO 08 - GridView 2x2
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: const [
                BlocoEstatistica(
                  icone: Icons.visibility,
                  numero: '120',
                  titulo: 'Observações',
                ),
                BlocoEstatistica(
                  icone: Icons.people,
                  numero: '32',
                  titulo: 'Usuários',
                ),
                BlocoEstatistica(
                  icone: Icons.camera_alt,
                  numero: '45',
                  titulo: 'Fotos',
                ),
                BlocoEstatistica(
                  icone: Icons.star,
                  numero: '18',
                  titulo: 'Destaques',
                ),
              ],
            ),

            const SizedBox(height: 20),

            // EXERCÍCIO 06 - Card de destaque
            Stack(
              children: [
                Card(
                  elevation: 4,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.teal.shade50,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.star,
                          size: 40,
                          color: Colors.orange,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Observação em Destaque',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Esta é a observação mais importante registrada recentemente.',
                        ),
                      ],
                    ),
                  ),
                ),

                // EXERCÍCIO 05 - Badge Destaque
                Positioned(
                  top: 12,
                  right: 12,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'Destaque',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                // EXERCÍCIO 05 - Badge Confirmado
                Positioned(
                  bottom: 12,
                  left: 12,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'Confirmado',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // EXERCÍCIO 03 - Últimos Registros
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.list_alt,
                    color: Colors.teal,
                    size: 32,
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Text(
                      'Últimos Registros',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Ver todos'),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // EXERCÍCIO 04 - Overflow proposital
            Row(
              children: [
                const Icon(
                  Icons.warning,
                  color: Colors.orange,
                  size: 32,
                ),
                const SizedBox(width: 8),
                const Text(
                  'Este é um texto extremamente longo criado propositalmente para ultrapassar o espaço disponível na Row e provocar o overflow visual do Flutter.',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}