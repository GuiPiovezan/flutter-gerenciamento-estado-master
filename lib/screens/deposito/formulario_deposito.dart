import 'package:bytebank/components/editor.dart';
import 'package:bytebank/models/saldo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const _titleAppBar = 'Depósito';
const _dica = '0,00';
const _rotulo = 'Valor';

class FormularioDeposito extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titleAppBar),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            Editor(
                dica: _dica,
                rotulo: _rotulo,
                controlador: _controladorCampoValor,
                icone: Icons.monetization_on),
            ElevatedButton(
              onPressed: () {
                _criaDeposito(_controladorCampoValor.text, context);
              },
              child: Text('Receber'),
            )
          ],
        ),
      ),
    );
  }

  void _criaDeposito(String valorRecebido, BuildContext context) {
    double valor = double.tryParse(valorRecebido);
    if(valor != null){
      Provider.of<Saldo>(context, listen: false).adicionar(valor);
      Navigator.pop(context);
    }
  }
}
