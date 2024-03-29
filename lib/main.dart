import 'package:flutter/material.dart';
import 'package:shopping/pages/tabs.page.dart';
import 'package:shopping/themes/light.theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      home: const DefaultTabController(
        length: 3,
        child: TabsPage(),
      ),
    );
  }
}
