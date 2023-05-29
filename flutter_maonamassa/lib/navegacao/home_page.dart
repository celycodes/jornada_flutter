import 'package:flutter/material.dart';

import 'page1.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME PAGE'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      settings: RouteSettings(name: 'page1'),
                      builder: (context) => Page1(),
                    ),
                  );
                },
                child: Text('Page1 Via PAGE')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/page2');
                },
                child: Text('Page1 Via Named')),
          ],
        ),
      ),
    );
  }
}
