import 'package:flutter/material.dart';
import 'package:motofinance/registro_diario.dart';
import 'package:provider/provider.dart';

class EarnButton extends StatelessWidget {
  const EarnButton({super.key});

  @override
  Widget build(BuildContext context) {
    final _controller = TextEditingController();

    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Ganho de hoje',
                    style: TextStyle(fontSize: 24),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: _controller,
                    keyboardType: const TextInputType.numberWithOptions(),
                    decoration: const InputDecoration(
                      hintText: 'Quanto você ganhou hoje',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 21),
                  ElevatedButton(
                    onPressed: () {
                      var ganho = int.tryParse(_controller.text);
                      if (ganho != null && ganho >= 0) {
                        context.read<RegistroDiario>().setGanhoDiario(ganho);
                        Navigator.pop(context);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content:
                            Text('Por favor, insira um valor válido.'),
                          ),
                        );
                      }
                    },
                    child: const Text(
                      'Confirmar',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
      child: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Ganhos',
              style: TextStyle(fontSize: 32),
            ),
            Text(
              context.watch<RegistroDiario>().ganhoDiario.toString(),
              style: const TextStyle(fontSize: 32),
            ),
          ],
        ),
      ),
    );
  }
}
