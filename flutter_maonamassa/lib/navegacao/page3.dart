import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  static final String routeName = '/page3';
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PAGE 3'),
        backgroundColor: Colors.blue.shade800,
      ));
  }
}
