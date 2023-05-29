import 'package:flutter/material.dart';

import 'page2.dart';

class Page1 extends StatelessWidget {
  static final String routeName = '/page1';
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PAGE 1'),
        backgroundColor: Colors.blue.shade200,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('POP')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      settings: RouteSettings(name: 'page2'),
                      builder: (context) => Page2(),
                    ),
                  );
                },
                child: Text('Page2 Via PAGE')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Page2.routeName);
                },
                child: Text('Page2 Via Named')),
          ],
        ),
      ),
    );
  }
}
