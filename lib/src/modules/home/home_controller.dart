import 'dart:math';

import 'package:prova_eyder/src/models/transaction_model.dart';

class HomeController {
  List<Transaction> transactions = [];

  /// Adiciona uma nova transação a lista [transactions]
  ///
  /// ```
  /// void addTransaction(isDeposit) {
  ///   // Cria um novo [double] aleatorio
  ///   double random = Random().nextDouble();
  ///   transactions.add(
  ///     Transaction(
  ///       // Pega o [DateTime] do exato momento
  ///       date: DateTime.now(),
  ///       isDeposit: isDeposit,
  ///       // Verifica se a transação é um deposito
  ///       value: isDeposit
  ///           // Caso seja, o valor é positivo
  ///           ? random * 1000
  ///           // Se for um saque o valor é negativo
  ///           : -random * 1000,
  ///     ),
  ///   );
  /// }
  /// ```
  void addTransaction(bool isDeposit) {
    double random = Random().nextDouble();
    transactions.add(
      Transaction(
        date: DateTime.now(),
        isDeposit: isDeposit,
        value: isDeposit ? random * 1000 : -random * 1000,
      ),
    );
  }

  /// Retona o saldo da conta
  /// ```
  /// double balance() {
  ///   // Inicialmente com o valor 0.0
  ///   double balance = 0.0;
  ///   // Intera sobre cada transação do array transactions
  ///   transactions.forEach((transaction) {
  ///     // E incrementa ao saldo atual
  ///     balance += transaction.value;
  ///     // Caso o valor da transação seja negativo ele decrementa
  ///     // Exemplo:
  ///     // balance += -100
  ///   });
  ///   return balance;
  /// }
  /// ```
  double balance() {
    double balance = 0.0;
    transactions.forEach((transaction) {
      balance += transaction.value;
    });
    return balance;
  }
}
