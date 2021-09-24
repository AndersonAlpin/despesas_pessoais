import 'package:flutter/material.dart';

class TransactionGraphic extends StatelessWidget {
  const TransactionGraphic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
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
    );
  }
}
