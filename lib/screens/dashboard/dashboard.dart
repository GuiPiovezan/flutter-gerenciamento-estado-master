import 'package:bytebank/models/saldo.dart';
import 'package:bytebank/screens/dashboard/saldo_card.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bytebank'),
      ),
      body: Align(
        child: SaldoCard(Saldo(10)),
        alignment: Alignment.topCenter,
      ),
    );
  }
}
