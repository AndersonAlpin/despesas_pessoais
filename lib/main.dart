import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:despesas_pessoais/views/home.dart';
import 'package:flutter/material.dart';

main() => runApp(ExpansesApp());

class ExpansesApp extends StatelessWidget {
  const ExpansesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [const Locale('pt', 'BR')],
      theme: ThemeData(
        primaryColor: Colors.cyan.shade700,
      ),
      home: MyHomePage(),
    );
  }
}
