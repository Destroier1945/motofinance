// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:motofinance/providers/despesa_provider.dart';
import 'package:motofinance/providers/ganho_provider.dart';
import 'package:motofinance/providers/jornada_provider.dart';
import 'package:motofinance/screens/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => JornadaProvider()),
    ChangeNotifierProvider(create: (_) => GahnoProvider()),
    ChangeNotifierProvider(create: (_) => DespesaProvider()),
  ],
  child: const MyApp(),
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
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MotoFinance',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
    );
  }
}
