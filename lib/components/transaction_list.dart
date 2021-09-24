import 'package:despesas_pessoais/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  TransactionList({Key? key, required this.transactions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: transactions.map((tr) {
          return SizedBox(
            height: 90,
            child: Card(
              margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
              color: Colors.white70,
              child: Row(
                children: [
                  // NÃO CONSEGUI ADICIONAR UM MARGIN SEM QUEBRAR O ClipOval
                  Container(
                      margin: const EdgeInsets.only(
                    top: 5.0,
                    bottom: 5.0,
                    left: 5.0,
                  )),
                  ClipOval(
                    child: Container(
                        width: 75,
                        height: 72,
                        color: Colors.cyan.shade700,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              NumberFormat.simpleCurrency(locale: 'pt_BR')
                                  .format(tr.value),
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
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
    );
  }
}
