import 'package:flutter/material.dart';

class KmButtonFinal extends StatelessWidget {
  const KmButtonFinal({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Para encerrar, coloque seu km',
                      style: TextStyle(fontSize: 24),
                    ),
                    const SizedBox(height: 12),
                    const TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'km final de hoje',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Confirmar',
                          style: TextStyle(fontSize: 24),
                        ))
                  ],
                ),
              );
            });
      },
      child: Container(
        alignment: Alignment.center,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Km final',
              style: TextStyle(fontSize: 32),
            ),
            Text(
              '---',
              style: TextStyle(fontSize: 32),
            ),
          ],
        ),
      ),
    );
  }
}
