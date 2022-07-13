import 'package:bytebank/models/saldo.dart';
import 'package:flutter/material.dart';

class SaldoCard extends StatelessWidget {
  final Saldo saldo;

  SaldoCard(this.saldo);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          'Saldo ${saldo.convertToReal()}',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
