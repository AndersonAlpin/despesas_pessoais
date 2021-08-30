import 'package:despesas_pessoais/models/transaction.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final _transactions = [
    Transaction(
      id: '1',
      title: 'Boleto da faculdade',
      value: 309.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'Conta de Internet',
      value: 65.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: '3',
      title: 'Gás',
      value: 90.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: '4',
      title: 'Pizza',
      value: 21.00,
      date: DateTime.now(),
    ),
  ];

  // const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Anderson Alpin'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.white70,
              child: Text('Gráfico'),
              elevation: 5,
            ),
          ),
          Column(
            children: _transactions.map((tr) {
              return SizedBox(
                height: 80,
                child: Card(
                  margin: const EdgeInsets.only(top:5.0, bottom: 5.0),
                  color: Colors.white70,
                  child: Row(
                    children: [
                      ClipOval(
                        child: Container(
                          width: 67,
                          height: 64,
                          color: Colors.cyan.shade700,
                          child: Center(
                            child: Text(
                              tr.value.toString(),
                            ),
                          )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(tr.title,), 
                            Text(tr.date.toString())
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
