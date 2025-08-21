import 'package:flutter/foundation.dart';
import 'package:motofinance/models/jornada_model.dart';

import '../repositories/jornada_repository.dart';

class JornadaProvider with ChangeNotifier{
  List<Jornada> _jornadas = [];

  List<Jornada> get jornadas => _jornadas;

  Future<void> carregarJornadas()async{
    _jornadas = await JornadaRepository.listarJornadas();
    notifyListeners();
  }
  Future<void> iniciarJornada(double kmInicial) async{
    final jornada = Jornada( inicio: DateTime.now(), kmInicial: kmInicial );
    await JornadaRepository.inserirJornada(jornada);
    await carregarJornadas();
  }

  Future<void> finalizarJornada(int id, double kmFinal)async{
    await JornadaRepository.finalizar(id, kmFinal);
    await carregarJornadas();
  }
}