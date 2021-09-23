import 'package:despesas_pessoais/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyHomePage extends StatelessWidget {
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
      id: '3',
      title: 'Gás',
      value: 90.00,
      date: new DateTime(2021, 9, 30),
    ),
    Transaction(
      id: '4',
      title: 'Pizza',
      value: 21.00,
      date: new DateTime(2021, 10, 15),
    ),
  ];

  // const MyHomePage({Key? key}) : super(key: key);
  late String title;
  late String value;

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
              child: Text('Gráfico',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.0,
                  )),
              elevation: 5,
            ),
          ),
          Column(
            children: _transactions.map((tr) {
              return SizedBox(
                height: 80,
                child: Card(
                  margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
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
                                NumberFormat.simpleCurrency(locale: 'pt_BR')
                                    .format(tr.value),
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              tr.title,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.cyan.shade700,
                              ),
                            ),
                            Text(
                              DateFormat("EEEE ',' d 'de' MMM 'de' y", "pt_BR")
                                  .format(tr.date),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
          Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text('Novas despesas',
                      style: TextStyle(
                        fontSize: 18.0,
                      )),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Informe o título',
                        icon: Icon(Icons.text_fields)),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Informe o valor',
                        icon: Icon(Icons.paid_outlined)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
