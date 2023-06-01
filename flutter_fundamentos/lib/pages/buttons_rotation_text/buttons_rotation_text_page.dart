// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class ButtonsRotationTextPage extends StatelessWidget {
  const ButtonsRotationTextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons and text rotation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RotatedBox(
              quarterTurns: -1,
              child: Container(
                padding: const EdgeInsets.all(10),
                color: Colors.purple.shade200,
                child: const Text('Buttons and text rotation'),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(15),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  )),
              child: const Text('TextButton'),
            ),
            const SizedBox(
              height: 15,
            ),
            IconButton(
              onPressed: () {},
              color: Colors.purple.shade800,
              icon: const Icon(
                Icons.email,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(
                  const Size(100, 50),
                ),
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.purple.shade200;
                  } else if (states.contains(MaterialState.hovered)) {
                    return Colors.purpleAccent;
                  }
                  return Colors.deepPurple;
                }),
              ),
              child: const Text('ElevatedButton'),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(100, 50),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              icon: const Icon(
                Icons.email,
              ),
              label: const Text('Email'),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {},
              child: const Text('InkWell'),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              child: const Text('GestureDetector'),
              onTap: () => print('gesture clicado'),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 210,
              height: 70,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Colors.purple,
                    Colors.deepPurple,
                    Colors.deepPurpleAccent,
                  ],
                ),
                borderRadius: BorderRadius.circular(45),
                boxShadow: const [BoxShadow(blurRadius: 5)],
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(45),
                onTap: () {
                  print('Button clicado');
                },
                child: const Center(
                    child: Text(
                  'Button',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
