// ignore_for_file: avoid_print, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LayoutBuilder'),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.purple.shade600,
                  width: constraints.maxWidth * .50,
                  height: constraints.maxHeight * .5,
                ),
                Container(
                  color: Colors.purple.shade800,
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * .5,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
