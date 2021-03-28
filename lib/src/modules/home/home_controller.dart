import 'dart:math';

import 'package:prova_eyder/src/models/transaction_model.dart';

class HomeController {
  List<Transaction> transactions = [];

  void addTransaction(isDeposit) {
    transactions.add(
      Transaction(
        date: DateTime.now(),
        isDeposit: isDeposit,
        value: isDeposit
            ? Random().nextDouble() * 1000
            : -Random().nextDouble() * 1000,
      ),
    );
  }

  double balance() {
    double balance = 0.0;
    transactions.forEach((transaction) {
      balance += transaction.value;
    });
    return balance;
  }
}
