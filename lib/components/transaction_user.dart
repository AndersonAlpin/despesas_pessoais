import 'dart:math';

import 'package:despesas_pessoais/models/transaction.dart';
import 'package:flutter/material.dart';
import 'transaction_graphic.dart';
import 'transaction_list.dart';
import 'transaction_form.dart';

class TransactionUser extends StatefulWidget {
  TransactionUser({Key? key}) : super(key: key);

  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
      id: '1',
      title: 'Boleto da faculdade',
      value: 309.00,
      date: new DateTime(2021, 9, 26),
    ),
    Transaction(
      id: '2',
      title: 'Conta de Internet',
      value: 65.00,
      date: new DateTime(2021, 9, 30),
    ),
    Transaction(
      id: '4',
      title: 'Pizza',
      value: 21.00,
      date: new DateTime(2021, 10, 15),
    ),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
        id: Random().nextDouble().toString(),
        title: title,
        value: value,
        date: DateTime.now());

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TransactionGraphic(),
          TransactionList(
            transactions: _transactions,
          ),
          TransactionForm(onSubmit: _addTransaction),
        ],
      ),
    );
  }
}
