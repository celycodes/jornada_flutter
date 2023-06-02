import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/routes/app_routes.dart';

enum PopupMenuPages {
  container,
  rowColumn,
  mediaQuery,
  layoutBuilder,
  buttonsRotationText,
  singleChildScrollView,
  listView,
  dialogs,
  snackbar,
  forms,
  cities,
  stack,
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Flutter Fundamentos'),
        ),
        actions: [
          PopupMenuButton<PopupMenuPages>(
              onSelected: (PopupMenuPages valueSelect) {
            switch (valueSelect) {
              case PopupMenuPages.container:
                Navigator.of(context).pushNamed(
                  AppRoutes.container,
                );
                break;
              case PopupMenuPages.rowColumn:
                Navigator.of(context).pushNamed(
                  AppRoutes.rowColumn,
                );
                break;
              case PopupMenuPages.mediaQuery:
                Navigator.of(context).pushNamed(
                  AppRoutes.mediaQuery,
                );
                break;
              case PopupMenuPages.layoutBuilder:
                Navigator.of(context).pushNamed(
                  AppRoutes.layoutBuilder,
                );
                break;
              case PopupMenuPages.buttonsRotationText:
                Navigator.of(context).pushNamed(
                  AppRoutes.buttonsRotationText,
                );
                break;
              case PopupMenuPages.singleChildScrollView:
                Navigator.of(context).pushNamed(
                  AppRoutes.singleChildScrollView,
                );
                break;
              case PopupMenuPages.listView:
                Navigator.of(context).pushNamed(
                  AppRoutes.listView,
                );
                break;
              case PopupMenuPages.dialogs:
                Navigator.of(context).pushNamed(
                  AppRoutes.dialogs,
                );
                break;
              case PopupMenuPages.snackbar:
                Navigator.of(context).pushNamed(
                  AppRoutes.snackbar,
                );
                break;
              case PopupMenuPages.forms:
                Navigator.of(context).pushNamed(
                  AppRoutes.forms,
                );
                break;
              case PopupMenuPages.cities:
                Navigator.of(context).pushNamed(
                  AppRoutes.cities,
                );
                break;
              case PopupMenuPages.stack:
                Navigator.of(context).pushNamed(
                  AppRoutes.stack,
                );
                break;
            }
          }, itemBuilder: (BuildContext context) {
            return <PopupMenuItem<PopupMenuPages>>[
              const PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.container,
                child: Text('Container'),
              ),
              const PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.rowColumn,
                child: Text('Rows & Columns'),
              ),
              const PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.mediaQuery,
                child: Text('MediaQuery'),
              ),
              const PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.layoutBuilder,
                child: Text('LayoutBuilder'),
              ),
              const PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.buttonsRotationText,
                child: Text('ButtonsTextRotation'),
              ),
              const PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.singleChildScrollView,
                child: Text('SingleChildScrollView'),
              ),
              const PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.listView,
                child: Text('ListView'),
              ),
              const PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.dialogs,
                child: Text('Dialogs'),
              ),
              const PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.snackbar,
                child: Text('SnackBar'),
              ),
              const PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.forms,
                child: Text('Forms'),
              ),
              const PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.cities,
                child: Text('Cities'),
              ),
              const PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.stack,
                child: Text('Stack'),
              ),
            ];
          }),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.container,
                );
              },
              child: const Text('Container'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.rowColumn,
                );
              },
              child: const Text('Rows & Columns'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.mediaQuery,
                );
              },
              child: const Text('MediaQuery'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.layoutBuilder,
                );
              },
              child: const Text('LayoutBuilder'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.buttonsRotationText,
                );
              },
              child: const Text('ButtonsTextRotation'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.singleChildScrollView,
                );
              },
              child: const Text('SingleChildScrollView'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.listView,
                );
              },
              child: const Text('ListView'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.dialogs,
                );
              },
              child: const Text('Dialogs'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.snackbar,
                );
              },
              child: const Text('SnackBar'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.forms,
                );
              },
              child: const Text('Forms'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.cities,
                );
              },
              child: const Text('Cities'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.stack,
                );
              },
              child: const Text('Stack'),
            ),
          ],
        ),
      ),
    );
  }
}
