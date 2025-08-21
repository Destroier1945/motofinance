import 'package:motofinance/models/despesa_model.dart';

class DespesaRepository{
  static Future<Despesa> inserirDespesa(Despesa despesa) async {
    await Future.delayed(const Duration(seconds: 1));
    return despesa;
  }
  static Future<List<Despesa>> listarDespesas() async {
    await Future.delayed(const Duration(seconds: 1));
    return [];
  }
  static Future<void> excluirDespesa(int id) async {
    await Future.delayed(const Duration(seconds: 1));
    return;
  }
  static Future<void> editarDespesa(Despesa despesa) async {
    await Future.delayed(const Duration(seconds: 1));
    return;
  }
}