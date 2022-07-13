import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';

class Saldo extends ChangeNotifier {
  final double valor;

  Saldo(this.valor);

  String convertToReal(){
    return UtilBrasilFields.obterReal(valor);
  }
}