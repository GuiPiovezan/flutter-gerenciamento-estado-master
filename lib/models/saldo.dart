import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';

class Saldo extends ChangeNotifier {
  double valor;

  Saldo(this.valor);

  adicionar(double valor){
    this.valor += valor;

    notifyListeners();
  }

  subtrair(double valor){
    this.valor -= valor;

    notifyListeners();
  }

  String convertToReal(){
    return UtilBrasilFields.obterReal(valor);
  }
}