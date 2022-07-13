import 'package:bytebank/models/saldo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SaldoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Consumer<Saldo>(
          builder: (context, value, child) {
            return Text(
              'Saldo ${value.convertToReal()}',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            );
          }),
        )
      );
  }
}
