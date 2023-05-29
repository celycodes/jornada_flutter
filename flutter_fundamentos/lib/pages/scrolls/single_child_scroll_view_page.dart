import 'package:flutter/material.dart';

class SingleChildScrollViewPage extends StatelessWidget {
  const SingleChildScrollViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SigleChildScrollView'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              color: Colors.purple.shade100,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              color: Colors.purple.shade200,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              color: Colors.purple.shade300,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              color: Colors.purple.shade400,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              color: Colors.purple.shade500,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              color: Colors.purple.shade600,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              color: Colors.purple.shade700,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              color: Colors.purple.shade800,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              color: Colors.purple.shade900,
            ),
          ],
        ),
      ),
    );
  }
}
