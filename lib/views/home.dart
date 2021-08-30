import 'package:despesas_pessoais/models/transaction.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final _transactions = [
    Transaction(
      id: '1',
      title: 'Boleto do banco',
      value: 600.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'Luz',
      value: 51.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: '3',
      title: 'Almoço',
      value: 32.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: '4',
      title: 'Lanche',
      value: 20.00,
      date: DateTime.now(),
    ),
  ];

  // const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Despesas Pessoais'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blueAccent,
              child: Text('Gráfico'),
              elevation: 5,
            ),
          ),
          Column(
            children: _transactions.map((tr) {
              return Card(
                child: Row(
                  children: [
                    Container(
                      color: Colors.red,
                      child: Text(tr.value.toString())
                    ),
                    Column(
                      children: [
                        Text(tr.title),
                        Text(tr.date.toString())
                      ],
                    ),
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
