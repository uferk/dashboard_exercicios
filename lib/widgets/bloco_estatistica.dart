import 'package:flutter/material.dart';

class BlocoEstatistica extends StatelessWidget {
  final IconData icone;
  final String numero;
  final String titulo;

  const BlocoEstatistica({
    super.key,
    required this.icone,
    required this.numero,
    required this.titulo,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Icon(
              icone,
              size: 32,
              color: Colors.teal,
            ),
            const SizedBox(height: 8),
            Text(
              numero,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(titulo),
          ],
        ),
      ),
    );
  }
}