import 'package:brasil_fields/brasil_fields.dart';

class Saldo {
  final double valor;

  Saldo(this.valor);

  String convertToReal(){
    return UtilBrasilFields.obterReal(valor);
  }
}