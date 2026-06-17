import 'package:flutter/material.dart';
import 'package:ledger_mobile/presentation/pages/home_page.dart';

void main() {
  runApp(const LedgerMobileApp());
}

class LedgerMobileApp extends StatelessWidget {
  const LedgerMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
