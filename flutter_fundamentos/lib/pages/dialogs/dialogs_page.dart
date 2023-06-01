// ignore_for_file: avoid_print

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/pages/dialogs/dialog_custom.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Costum Dialog
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) {
                      return DialogCustom(context);
                    },
                  );
                },
                child: const Text('Dialog')),
            // Simple Dialog
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        title: const Text('SimpleDialog'),
                        contentPadding: const EdgeInsets.all(10),
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text('flutter dialogs'),
                          ),
                          TextButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: const Text('Fechar')),
                        ],
                      );
                    },
                  );
                },
                child: const Text('SimpleDialog')),
            // Alert Dialog
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        if (Platform.isIOS) {
                          return CupertinoAlertDialog(
                          title: const Text('AlertDialog'),
                          content: const SingleChildScrollView(
                            child: ListBody(children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Deseja realmente salvar?'),
                              )
                            ]),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {},
                              child: const Text('Cancelar'),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text('Confirmar'),
                            ),
                          ],
                        );
                        } else {
                          return AlertDialog(
                          title: const Text('AlertDialog'),
                          content: const SingleChildScrollView(
                            child: ListBody(children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Deseja realmente salvar?'),
                              )
                            ]),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {},
                              child: const Text('Cancelar'),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text('Confirmar'),
                            ),
                          ],
                        );
                        }
                      },);
                },
                child: const Text('AlertDialog')),
            ElevatedButton(
                onPressed: () async {
                  // dialog para selecção de horário
                  final selectedTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  print('Horário selecionado = $selectedTime');
                },
                child: const Text('Time Picker')),
            ElevatedButton(
                onPressed: () async {
                  final selectedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2025),
                  );
                  print('Data selecionado = $selectedDate');
                },
                child: const Text('Date Picker')),
          ],
        ),
      ),
    );
  }
}
