import 'package:flutter/material.dart';

class Lista extends StatelessWidget {
  const Lista({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  /*Navigator.of(context).push(MaterialPageRoute(
                      settings:
                          RouteSettings(name: 'detalhe', arguments: {'id': 11}),
                      builder: (context) => Detalhe()));*/
                  Navigator.of(context).pushNamed('/detalhe', arguments: {'id': 11});
                },
                child: Text('detalhes')),
          ],
        ),
      ),
    );
  }
}
