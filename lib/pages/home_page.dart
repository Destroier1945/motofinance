import 'package:flutter/material.dart';
import 'package:motofinance/utils/earn_button.dart';
import 'package:motofinance/utils/km_button.dart';
import 'package:motofinance/utils/km_button_final.dart';
import 'package:motofinance/utils/spending_button.dart';
import 'package:provider/provider.dart';
import '../registro_diario.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    final registroDiario = context.watch<RegistroDiario>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Motolivery Finance"),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    KmButton(),
                    const KmButtonFinal(),
                  ],
                ),
              ),
              const Divider(),
              Container(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Column(
                      children: [EarnButton()],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Km rodado',
                          style: TextStyle(fontSize: 32),
                        ),
                        Text(
                          '${registroDiario.kmFinal}',
                          style: const TextStyle(fontSize: 32),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Ganhos por km',
                      style: TextStyle(fontSize: 24),
                    ),
                    Text(
                      context.read<RegistroDiario>().getRendas.toString(),
                      style: const TextStyle(fontSize: 24),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Container(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Ganho liquido do dia',
                      style: TextStyle(fontSize: 24),
                    ),
                    Text(
                      '${registroDiario.ganhoDiario}',
                      style: const TextStyle(fontSize: 24),
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
