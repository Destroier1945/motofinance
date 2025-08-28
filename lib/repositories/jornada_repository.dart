import 'package:motofinance/models/jornada_model.dart';

import '../core/database/database_helper.dart';

class JornadaRepository {
  static Future<Jornada> inserirJornada(Jornada jornada) async {
    final db = await DatabaseHelper.getDatabase();
    final id = await db.insert('jornadas', jornada.toMap());
    return Jornada(
      id: id,
      inicio: jornada.inicio,
      kmInicial: jornada.kmInicial,
      fim: jornada.fim,
      kmFinal: jornada.kmFinal,
    );
  }

  static Future<List<Jornada>> listarJornadas() async {
    final db = await DatabaseHelper.getDatabase();
    final List<Map<String, dynamic>> maps =
        await db.query('jornadas', where: "id= ?", orderBy: 'inicio DESC');
    return maps.map((map) => Jornada.fromMap(map)).toList();
  }

  static Future<void> finalizar(int id, double kmFinal) async {
    final db = await DatabaseHelper.getDatabase();
    final result = await db.query('jornadas', where: 'id = ?', whereArgs: [id]);
    if (result.isEmpty) {
      throw Exception('Jornada ID $id não encontrada');
    }
    final kmInicial = result.first['km_inicial'] as num;
    await db.update(
      'jornadas',
      {
        'fim': DateTime.now().toIso8601String(),
        'km_final': kmFinal,
        'km_rodados': kmFinal - kmInicial.toDouble(),
      },
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
