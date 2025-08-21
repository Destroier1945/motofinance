import 'package:flutter/material.dart';

import '../models/ganho_model.dart';

class GahnoProvider with ChangeNotifier{
  List<Ganho> _gahnos = [];
  List<Ganho> get ganhos => _gahnos;

  Future<void> carregarGanhos() async {
    // Simula o carregamento de dados
    await Future.delayed(const Duration(seconds: 1));
    _gahnos = [
      Ganho(id: 1, descricao: 'Corrida 1', valor: 50.0,  jornadaId: 1),
      Ganho(id: 2, descricao: 'Corrida 2', valor: 75.0,  jornadaId: 1),
    ];
    notifyListeners();
  }
  Future<void> adicionarGanho(Ganho ganho) async {
    // Simula a adição de um ganho
    await Future.delayed(const Duration(seconds: 1));
    _gahnos.add(ganho);
    notifyListeners();
  }
  Future<void> removerGanho(int id) async {
    // Simula a remoção de um ganho
    await Future.delayed(const Duration(seconds: 1));
    _gahnos.removeWhere((ganho) => ganho.id == id);
    notifyListeners();
  }
  Future<void> atualizarGanho(Ganho ganho) async {
    // Simula a atualização de um ganho
    await Future.delayed(const Duration(seconds: 1));
    final index = _gahnos.indexWhere((g) => g.id == ganho.id);
    if (index != -1) {
      _gahnos[index] = ganho;
      notifyListeners();
    }
  }
}