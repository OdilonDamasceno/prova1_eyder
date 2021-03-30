/// A classe transaction que serve para definir o modelo da transação
class Transaction {
  bool _isDeposit;
  DateTime _date;
  double _value;

  Transaction({DateTime date, bool isDeposit, double value}) {
    this._date = date;
    this._isDeposit = isDeposit;
    this._value = value;
  }

  /// Data da transação
  String get date => "${_date.day}/${_date.month}/${_date.year}";

  /// Valor da transação
  double get value => _value;

  /// Variavel para detectar se é um deposito
  bool get isDeposit => _isDeposit;
}
