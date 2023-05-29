// ignore_for_file: avoid_print, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    print('height ${mediaQuery.size.height}'); // altura da tela
    print('width ${mediaQuery.size.width}'); // largura da tela
    print('orientation ${mediaQuery.orientation}'); // orientação da tela
    print('paddingTop ${mediaQuery.padding.top}'); // statusBar
    print('appBarDefault size ${kToolbarHeight}'); // app Bar size

    final statusBar =
        mediaQuery.padding.top; // tela de status do app (bateria, horario etc)
    // tamanho real da tela
    final heightBody = mediaQuery.size.height - statusBar - kToolbarHeight;

    return Scaffold(
      appBar: AppBar(
        title: const Text('MediaQuery'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.purple.shade600,
              width: mediaQuery.size.width,
              height: heightBody * .5, // 50% da tela (multiplia por 0.5)
            ),
            Container(
              color: Colors.purple.shade800,
              width: mediaQuery.size.width,
              height: heightBody * .5,
            ),
          ],
        ),
      ),
    );
  }
}
