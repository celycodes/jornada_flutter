// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_fundamentos/pages/buttons_rotation_text/buttons_rotation_text_page.dart';
import 'package:flutter_fundamentos/pages/dialogs/dialogs_page.dart';
import 'package:flutter_fundamentos/pages/scrolls/list_view_page.dart';
import 'pages/container/container_page.dart';
import 'pages/home/home_page.dart';
import 'pages/layout_builder/layout_builder_page.dart';
import 'pages/media_query/media_query_page.dart';
import 'pages/rows_columns/row_column_page.dart';
import 'pages/scrolls/single_child_scroll_view_page.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false, //!kReleaseMode,
      builder: (_) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter fundamentos',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      routes: {
        AppRoutes.homePage: (_) => const HomePage(),
        AppRoutes.container: (_) => const ContainerPage(),
        AppRoutes.rowColumn: (_) => const RowColumnPage(),
        AppRoutes.mediaQuery: (_) => const MediaQueryPage(),
        AppRoutes.layoutBuilder: (_) => const LayoutBuilderPage(),
        AppRoutes.buttonsRotationText: (_) => const ButtonsRotationTextPage(),
        AppRoutes.singleChildScrollView: (_) =>
            const SingleChildScrollViewPage(),
        AppRoutes.listView: (_) => const ListViewPage(),
        AppRoutes.dialogs: (_) => const DialogsPage(),
      },
    );
  }
}