import 'package:flutter/material.dart';
import 'package:motofinance/pages/spending_page.dart';

class SpendingButton extends StatelessWidget {
  const SpendingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SpendingPage()));
      },
      child: Container(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Despesas',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              '65,49',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
