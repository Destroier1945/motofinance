import 'package:flutter/material.dart';

class EarnButton extends StatelessWidget {
  const EarnButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Ganho de hoje',
                      style: TextStyle(fontSize: 24),
                    ),
                    const SizedBox(height: 12),
                    const TextField(
                      keyboardType: TextInputType.numberWithOptions(),
                      decoration: InputDecoration(
                        hintText: 'Quanto vc ganhou hoje',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 21),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Confirmar',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ],
                ),
              );
            });
      },
      child: Container(
        alignment: Alignment.center,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ganhos',
              style: TextStyle(fontSize: 32),
            ),
            Text(
              '189,98',
              style: TextStyle(fontSize: 32),
            ),
          ],
        ),
      ),
    );
  }
}
