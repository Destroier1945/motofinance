// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:motofinance/pages/home_page.dart';
import 'package:motofinance/registro_diario.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (_) => RegistroDiario(),
  child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: const HomePage(),
    );
  }
}
