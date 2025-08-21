import 'package:motofinance/models/jornada_model.dart';

class JornadaRepository {
  static Future<Jornada> inserirJornada(Jornada jornada) async {
    await Future.delayed(const Duration(seconds: 1));
    return jornada;
  }
  static Future<List<Jornada>> listarJornadas() async {
    await Future.delayed(const Duration(seconds: 1));
    return [];
  }
  static Future<void> finalizar(int id, double kmFinal) async {
    await Future.delayed(const Duration(seconds: 1));
    return;
  }
}