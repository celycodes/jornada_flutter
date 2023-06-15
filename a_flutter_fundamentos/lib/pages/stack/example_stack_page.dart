import 'package:flutter/material.dart';

class ExampleStackPage extends StatelessWidget {
  const ExampleStackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Example'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://img.olhardigital.com.br/wp-content/uploads/2019/11/20191101065926.jpg',
                ),
              ),
            ),
          ),
          Container(
            color: Colors.white30,
          ),
          Positioned(
            bottom: 25,
            left: 10,
            right: 10,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              elevation: 12,
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Tallinn',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                        'Tallinn é a capital e a maior cidade da Estônia, com população de 428 mil habitantes (estimativa 2019). Agradável e pequena (com área de 159,2 em km²), seu centro medieval, conhecido como Old Town (Cidade Velha), é uma das cidades medievais europeias mais bem preservadas e desde 1997 está classificada como Patrimônio Mundial da UNESCO.'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
