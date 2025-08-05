import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../registro_diario.dart';

class KmButton extends StatelessWidget {
   KmButton({super.key});

  @override
  Widget build(BuildContext context) {

    final registroDiario = context.watch<RegistroDiario>();


    return GestureDetector(

      onTap: () {
        final TextEditingController _controller = TextEditingController();
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
                    TextField(
                      controller: _controller,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: 'Digite aqui para começar',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          var km = int.tryParse(_controller.text);
                          if(km != null && km >= 0 )  {
                            context.read<RegistroDiario>().kmInicial;
                            Navigator.pop(context);
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Por favor, insira um valor válido.'),
                              ),
                            );
                          }
                        },
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Km inicial',
              style: TextStyle(fontSize: 32),
            ),
            Text(
              context.watch()<RegistroDiario>().kmInicial.toString(),
              style: const TextStyle(fontSize: 32),
            ),
          ],
        ),
      ),
    );
  }
}
