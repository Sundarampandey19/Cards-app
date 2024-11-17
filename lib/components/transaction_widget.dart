import 'package:flutter/material.dart';

class Transactionwidget extends StatelessWidget {
  final IconData icon;
  final String transactionName;
  final String amount;
  final String date;
  final bool isCredited;

  const Transactionwidget(
      {super.key,
      required this.icon,
      required this.amount,
      required this.date,
      required this.isCredited,
      required this.transactionName});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration:
              const BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              icon,
              color: Colors.white,
              size: 30.0,
            ),
          ),
        ),
        const SizedBox(width: 20),
        Column(
          children: [
            Row(
              children: [
                Text(
                  transactionName,
                  style: const TextStyle(
                      fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "${isCredited ? '+' : '-'}$amount",
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: isCredited ? Colors.green : Colors.red),
                )
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              date,
              style: const TextStyle(
                fontSize: 12.0,
                color: Colors.grey,
              ),
            )
          ],
        )
      ],
    );
  }
}

class Transaction {
  final IconData icon;
  final String transactionName;
  final String amount;
  final String date;
  final bool isCredited;

  Transaction({
    required this.icon,
    required this.amount,
    required this.date,
    required this.isCredited,
    required this.transactionName,
  });
}

final List<Transaction> transactions = [
  Transaction(
    icon: Icons.shopping_cart,
    transactionName: "Shopping",
    amount: "200",
    date: "15 Nov 2024",
    isCredited: false,
  ),
  Transaction(
    icon: Icons.attach_money,
    transactionName: "Salary",
    amount: "5000",
    date: "1 Nov 2024",
    isCredited: true,
  ),
  Transaction(
    icon: Icons.fastfood,
    transactionName: "Food Delivery",
    amount: "50",
    date: "10 Nov 2024",
    isCredited: false,
  ),
];

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    print("Widget is mounter");
    return ListView.builder(
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        final transaction = transactions[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Transactionwidget(
              icon: transaction.icon,
              amount: transaction.amount,
              date: transaction.date,
              isCredited: transaction.isCredited,
              transactionName: transaction.transactionName),
        );
      },
    );
  }
}
