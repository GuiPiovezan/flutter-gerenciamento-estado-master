import 'dart:ui';

import 'package:bytebank/models/transferencias.dart';
import 'package:bytebank/screens/transferencia/lista.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

final _title = 'Últimas transferências';

class UltimasTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Text(
            _title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Consumer<Transferencias>(
            builder: (context, transferencias, child) {

              final _ultimasTransferencias = transferencias.transferencias.reversed.toList();
              final _quantidade = transferencias.transferencias.length;
              int _tamanho = 2;

              if(_quantidade == 0){
                return NotFoundTransferencias();
              }

              if(_quantidade < 3){
                _tamanho = _quantidade;
              }

              return ListView.builder(
                padding: EdgeInsets.all(8),
                itemCount: _tamanho,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ItemTransferencia(_ultimasTransferencias[index]);
                },
              );
            },
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ListaTransferencias(),
                ),
              );
            },
            child: Text('Ver todas transferências'),
          )
        ],
      ),
    );
  }
}

class NotFoundTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Card(
      margin: EdgeInsets.all(40),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Text(
          'Sem transferências realizadas',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
