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

  /// Data da transação formatada como `XX/XX/XXXX`
  String get date => _formatDate();

  /// Valor da transação
  double get value => _value;

  /// Variavel para detectar se é um deposito
  bool get isDeposit => _isDeposit;

  /// Usado para formatar a data da transação
  String _formatDate() {
    String _day = _date.day.toString().padLeft(2, "0");
    String _month = _date.month.toString().padLeft(2, "0");
    String _year = _date.year.toString();
    return "$_day/$_month/$_year";
  }
}
