import 'package:flutter/material.dart';

class RowColumnPage extends StatelessWidget {
  const RowColumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row & Column'),
      ),
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 30,
                width: 100,
                color: Colors.blue,
                child: const Text('Column 1 '),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 100,
                color: Colors.yellow,
                child: const Text('Column 2 '),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 100,
                color: Colors.red,
                child: const Text('Column 3 '),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 30,
                width: 100,
                color: Colors.blue,
                child: const Text('Row 1'),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 30,
                width: 100,
                color: Colors.yellow,
                child: const Text('Row 2'),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 30,
                width: 100,
                color: Colors.red,
                child: const Text('Row 3'),
              ),
              const SizedBox(
                width: 5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
