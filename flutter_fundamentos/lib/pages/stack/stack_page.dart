import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body:Stack(
        children: [
          Container(
            color: Colors.purple.shade700,
          ),
          Container(
            color: Colors.purple.shade500,
            width: 300,
            height: 300,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              color: Colors.purple.shade400,
              height: 150,
              width: 150,
            ),
          ),
          Positioned(
            top: 40,
            right: 100,
            child: Container(
              color: Colors.purple.shade300,
              width: 200,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
