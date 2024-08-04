import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sports/models/cart.dart';
import 'package:sports/pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey.shade700),
          useMaterial3: true,
        ),
        home: const IntroPage(),
      ),
    );
  }
}
