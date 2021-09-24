import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TransactionForm extends StatelessWidget {
  TransactionForm({Key? key, required this.onSubmit}) : super(key: key);
  TextEditingController titleController = TextEditingController();
  TextEditingController valueController = TextEditingController();

  final void Function(String, double) onSubmit;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 5,
        color: Colors.white70,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 5.0, bottom: 10.0),
                child: Text('Novas despesas',
                    style: TextStyle(
                      fontSize: 18.0,
                    )),
              ),
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                  hintText: 'Informe o título',
                  icon: Icon(
                    Icons.text_fields,
                    color: Colors.cyan.shade700,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.cyan.shade700,
                      width: 2,
                    ),
                  ),
                ),
              ),
              TextField(
                controller: valueController,
                decoration: InputDecoration(
                  hintText: 'Informe o valor',
                  icon: Icon(
                    Icons.paid_outlined,
                    color: Colors.cyan.shade700,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.cyan.shade700,
                      width: 2,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(top: 10.0),
                child: TextButton.icon(
                  onPressed: () {
                    final title = titleController.text;
                    final value = double.tryParse(valueController.text)??0;
                    onSubmit(title, value);
                  },
                  icon: Icon(
                    Icons.save,
                    color: Colors.white,
                  ),
                  label: Text(
                    'Salvar',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.cyan.shade700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
