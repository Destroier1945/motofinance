import 'package:flutter/material.dart';

import '../models/despesa_model.dart';
import '../repositories/despesa_repository.dart';

class DespesaProvider with ChangeNotifier{
  List<Despesa> _despesas = [];
  List<Despesa> get despesas => _despesas;

  Future<void> carregarDespesas() async{
    _despesas = await DespesaRepository.listarDespesas();
    notifyListeners();
  }
  Future<void> inserirDespesa(Despesa despesa) async {
    await DespesaRepository.inserirDespesa(despesa);
    await carregarDespesas();
  }
  Future<void> excluirDespesa(int id) async {
    await DespesaRepository.excluirDespesa(id);
    await carregarDespesas();
  }
  Future<void> atualizarDespesa(Despesa despesa) async {
    await DespesaRepository.editarDespesa(despesa);
    await carregarDespesas();
  }
}