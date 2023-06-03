import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/pages/bottom_navigator_bar/profile_page.dart';

class BottomNavigatorBarPage extends StatelessWidget {
  const BottomNavigatorBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigatorBar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          if (index == 1) {
            Navigator.of(context).pop();
          }
        },
        items: [
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.people_alt),
          ),
          BottomNavigationBarItem(
            label: 'Sair',
            icon: Icon(Icons.exit_to_app),
          ),
        ],
      ),
      body: IndexedStack(
        children: [
          ProfilePage(),
        ],
      ),
    );
  }
}
