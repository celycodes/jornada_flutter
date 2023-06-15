import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      body: ListView.separated(
        itemCount: 20,
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.deepPurple,
            thickness: 2,
          );
        },
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('User $index'),
            subtitle: const Text('flutter fundamentos'),
            leading: CircleAvatar(
              maxRadius: 25,
              backgroundImage: const NetworkImage(
                  'https://pbs.twimg.com/media/FSgl1OfUcAEsiQV.jpg'),
              backgroundColor: Colors.purple.shade800,
            ),
          );
        },
      ),
    );
  }
}
