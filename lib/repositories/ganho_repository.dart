import 'package:motofinance/models/ganho_model.dart';

class GanhoRepository {
  static Future<Ganho> inserirGanho(Ganho ganho) async {
    await Future.delayed(const Duration(seconds: 1));
    return ganho;
  }
  static Future<List<Ganho>> listarGanhos() async {
    await Future.delayed(const Duration(seconds: 1));
    return [];
  }
  static Future<void> excluirGanho(int id) async {
    await Future.delayed(const Duration(seconds: 1));
    return;
  }
  static Future<void> editarGanho(Ganho ganho) async {
    await Future.delayed(const Duration(seconds: 1));
    return;
  }
}