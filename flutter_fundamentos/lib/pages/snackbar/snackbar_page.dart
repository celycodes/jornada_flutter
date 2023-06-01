// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class SnackbarPage extends StatelessWidget {
  const SnackbarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                const scnackBar = SnackBar(
                  content: Text('Usuário salvo com sucesso'),
                  backgroundColor: Colors.deepPurple,
                );
                ScaffoldMessenger.of(context).showSnackBar(scnackBar);
              },
              child: const Text('Simple Snackbar'),
            ),
            ElevatedButton(
              onPressed: () {
                final scnackBar = SnackBar(
                  content: const Text('Usuário salvo com sucesso'),
                  backgroundColor: Colors.deepPurple,
                  action: SnackBarAction(
                      label: 'Desfazer',
                      backgroundColor: Colors.purple.shade900,
                      textColor: Colors.white,
                      onPressed: () {
                        print('Clicado!!');
                      }),
                );
                ScaffoldMessenger.of(context).showSnackBar(scnackBar);
              },
              child: const Text('Action Snackbar'),
            ),
          ],
        ),
      ),
    );
  }
}
