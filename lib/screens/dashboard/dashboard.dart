import 'package:bytebank/screens/dashboard/saldo_card.dart';
import 'package:bytebank/screens/deposito/formulario_deposito.dart';
import 'package:flutter/material.dart';

const _titleButton = 'Receber depósito';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bytebank'),
      ),
      body: Column(
        children: [
          Align(
            child: SaldoCard(),
            alignment: Alignment.topCenter,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => FormularioDeposito(),
                ),
              );
            },
            child: Text(_titleButton),
          )
        ],
      ),
    );
  }
}
