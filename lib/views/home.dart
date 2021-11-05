import 'dart:math';

import 'package:despesas_pessoais/components/transaction_form.dart';
import 'package:despesas_pessoais/components/transaction_list.dart';
import 'package:despesas_pessoais/models/transaction.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
    Navigator.of(context).pop();
  }

  _openTransactionFormModel(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (builder) {
        return TransactionForm(
          onSubmit: _addTransaction,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan.shade800,
        title: Text('Despesas Pessoais - Anderson Alpin'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _openTransactionFormModel(context),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TransactionList(
            transactions: _transactions,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.cyan.shade800,
        onPressed: () => _openTransactionFormModel(context),
      ),
      backgroundColor: Colors.white70,
    );
  }
}
