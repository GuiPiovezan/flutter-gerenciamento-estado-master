import 'package:brasil_fields/brasil_fields.dart';

class Transferencia {
  final double _valor;
  final int _numeroConta;

  Transferencia(
    this._valor,
    this._numeroConta,
  );

  String getValor(){
    return UtilBrasilFields.obterReal(_valor);
  }

  String getNumeroConta() {
    return 'Conta: $_numeroConta';
  }
}
