import 'package:flutter/material.dart';
import 'package:prova_eyder/src/models/transaction_model.dart';
import 'package:prova_eyder/src/modules/home/home_controller.dart';
import 'package:prova_eyder/src/widgets/action_banking_button.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController controller = HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Banking S/A"),
        actions: [
          Center(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(7),
                  child: Icon(Icons.account_balance_outlined),
                ),
                Text("\$ ${controller.balance().toStringAsFixed(2)}"),
                SizedBox(width: 20),
              ],
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: controller.transactions.length,
        itemBuilder: (_, index) {
          Transaction transaction = controller.transactions[index];
          return ListTile(
            leading: Icon(transaction.isDeposit ? Icons.add : Icons.remove),
            title: Text(transaction.isDeposit ? "Deposito" : "Saque"),
            subtitle: Text(transaction.date),
            trailing: Text(transaction.value.toStringAsFixed(2)),
          );
        },
      ),
      bottomNavigationBar: SizedBox(
        height: 45,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ActionBankingButton(
                color: Colors.red[400],
                onPressed: () {
                  setState(() {
                    controller.addTransaction(true);
                  });
                },
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                text: "Deposito",
              ),
            ),
            Expanded(
              child: ActionBankingButton(
                color: Colors.green[400],
                onPressed: () {
                  setState(() {
                    controller.addTransaction(false);
                  });
                },
                icon: Icon(
                  Icons.remove,
                  color: Colors.white,
                ),
                text: "Saque",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
