import 'package:flutter/material.dart';
import 'package:medhub/routes/routes.dart';
import 'package:medhub/utils/theme.dart';

Future<void> main() async {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MedHub',
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      initialRoute: '/',
      routes: routes,
    );
  }
}
