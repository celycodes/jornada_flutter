import 'package:flutter/material.dart';
import 'navegacao/home_page.dart' as navegacao;
import 'navegacao/page1.dart';
import 'navegacao/page2.dart';
import 'navegacao/page3.dart';
import 'navegacao_params/detalhe.dart';
import 'navegacao_params/lista.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mão na massa',
      //home: navegacao.HomePage(),
      initialRoute: '/navegacao_param',
      routes: {
        '/': (_) => navegacao.HomePage(),
        Page1.routeName: (_) => Page1(),
        Page2.routeName: (_) => Page2(),
        '/page3': (_) => Page3(),
        '/navegacao_param' : (_) => Lista(),
        '/detalhe': (_) => Detalhe(),
      },
    );
  }
}
