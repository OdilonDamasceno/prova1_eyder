class Transaction {
  bool _isDeposit;
  DateTime _date;
  double _value;
  Transaction({DateTime date, bool isDeposit, double value}) {
    this._date = date;
    this._isDeposit = isDeposit;
    this._value = value;
  }
  String get date => "${_date.day}/${_date.month}/${_date.year}";
  double get value => _value;
  bool get isDeposit => _isDeposit;
}
