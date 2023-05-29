import 'package:flutter/material.dart';
import 'page3.dart';

class Page2 extends StatelessWidget {
  static final String routeName = '/page2';
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PAGE 2'),
        backgroundColor: Colors.blue.shade800,
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
                      settings: RouteSettings(name: 'page3'),
                      builder: (context) => Page3(),
                    ),
                  );
                },
                child: Text('Page3 Via PAGE')),
            ElevatedButton(onPressed: () {
              Navigator.of(context).pushNamed('/page3');
            }, child: Text('Page3 Via Named')),
          ],
        ),
      ),
    );
  }
}
