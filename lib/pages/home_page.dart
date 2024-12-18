import 'package:flutter/material.dart';
import 'package:motofinance/utils/earn_button.dart';
import 'package:motofinance/utils/km_button.dart';
import 'package:motofinance/utils/km_button_final.dart';
import 'package:motofinance/utils/spending_button.dart';
import '../registro_diario.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var registroDiario = RegistroDiario(
      dia: DateTime(2024, 9, 7),
      kmInicial: 0,
      kmFinal: 0,
      ganhos: List.empty(growable: true),
      despesas: List.empty(growable: true));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Deliver Drivers"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 26),
                child: const Text(
                  'Relatório da semana',
                  style: TextStyle(fontSize: 32),
                ),
              ),
              SizedBox(
                height: 360,
                width: 720,
                child: Image.asset("assets/images/charts.png"),
              ),
              const Divider(),
              Container(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    KmButton(),
                    KmButtonFinal(),
                  ],
                ),
              ),
              const Divider(),
              Container(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [EarnButton()],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Km rodado',
                          style: TextStyle(fontSize: 32),
                        ),
                        Text(
                          '112',
                          style: TextStyle(fontSize: 32),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const Divider(),
              const SpendingButton(),
              const Divider(),
              Container(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Ganhos por km',
                      style: TextStyle(fontSize: 24),
                    ),
                    Text(
                      '1,15',
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Container(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Ganho liquido do dia',
                      style: TextStyle(fontSize: 24),
                    ),
                    Text(
                      '122,34',
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
