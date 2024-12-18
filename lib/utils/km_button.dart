import 'package:flutter/material.dart';

class KmButton extends StatelessWidget {
  const KmButton({super.key});

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
                      'Vamos começar, coloque seu km para começar o dia:',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 12),
                    const TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Digite aqui para começar',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Confirma',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Km inicial',
              style: TextStyle(fontSize: 32),
            ),
            Text(
              '2928',
              style: TextStyle(fontSize: 32),
            ),
          ],
        ),
      ),
    );
  }
}
