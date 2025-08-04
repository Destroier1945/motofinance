import 'package:flutter/material.dart';
import 'package:motofinance/pages/spending_page.dart';
import 'package:provider/provider.dart';

import '../registro_diario.dart';

class SpendingButton extends StatelessWidget {
  const SpendingButton({super.key});



  @override
  Widget build(BuildContext context) {

    final registroDiario = context.watch<RegistroDiario>();

    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SpendingPage()));
      },
      child: Container(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Despesas',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'R\$ ${registroDiario.despesas}',
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
