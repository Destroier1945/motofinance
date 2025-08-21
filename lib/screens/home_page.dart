import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Motofinance')

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.blue,
              child: const Center(
                child: Image(image: AssetImage('assets/images/moto.png'), fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Faltam 85,00 para a atingir o objetivo de 100,00',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Km rodado \nhoje',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text('58' 'km', style: TextStyle(fontSize: 24)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Ganhos de \nhoje',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text('R\$1.200', style: TextStyle(fontSize: 24)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Ganho \npor Km',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text('R\$ 1.20', style: TextStyle(fontSize: 24)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Ganhos'),
                  Text('85,00'),
                  Text('>'),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
            ),

          ],
        ),
      )
    );
  }
}
