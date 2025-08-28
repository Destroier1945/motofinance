import 'package:flutter_test/flutter_test.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:motofinance/core/database/database_helper.dart';
import 'package:motofinance/repositories/jornada_repository.dart';
import 'package:motofinance/models/jornada_model.dart';

void main(){
group("JornadaRepository",() {
  late Database db;

  late JornadaRepository jornadaRepository;
  setUpAll((){
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  });
  setUp(()async {
    db = await DatabaseHelper.getDatabase(inMemory: true);
    await db.execute('PRAGMA foreign_keys = ON;');
    jornadaRepository = JornadaRepository();
  });
  tearDown(()async{
    await db.close();
  });

  test("deve listar jornadas corretamente", ()async{
    await db.insert('jornadas', {
      "inicio": DateTime(2025, 1, 1, 8, 0).toIso8601String(),
      "fim": DateTime(2025, 1, 1, 18, 0).toIso8601String(),
      "km_inicial": 1000.0,
    });
    await db.insert('jornadas', {
      "inicio": DateTime(2025, 1, 2, 8, 0).toIso8601String(),
      "fim": DateTime(2025, 1, 2, 18, 0).toIso8601String(),
      "km_inicial": 1100.0,
    });
    final jornadas = await JornadaRepository.listarJornadas();

    expect(jornadas.length, 2);
    expect(jornadas[0].inicio, DateTime(2025,1,1,8,0));
    expect(jornadas[0].kmInicial, 1000.0);
    expect(jornadas[1].inicio, DateTime(2025,1,2,8,0));
    expect(jornadas[1].kmInicial, 1100.0);
  });


  test('deve inserir uma jornada corretamente', ()async{
    final jornada = Jornada(inicio: DateTime(2025,1,1,1,8,0), kmInicial: 1000.0, fim: DateTime(0000,0,0,0,0));

    await JornadaRepository.inserirJornada(jornada);

    final result = await db.query('jornadas');
    expect(result.length, 1);
    expect(result.first['inicio'], jornada.inicio.toIso8601String());
    expect(result.first['km_inicial'], jornada.kmInicial);
  });

  test('deve finalizar uma jornada corretamente', ()async{
    final jornadaId = await db.insert('jornadas', {
      "inicio": DateTime(2025, 1, 1, 8, 0).toIso8601String(),
      "km_inicial": 1000.0,
    });
    await JornadaRepository.finalizar(jornadaId, 1100.0);
    final result = await db.query('jornadas', where: 'id = ?', whereArgs: [jornadaId]);
    expect(result.length, 1);
    expect(result.first['fim'], DateTime(0000,0,0,0,0).toIso8601String());
    expect(result.first['km_rodados'], 100.0);
    expect(result.first['km_final'], 1100.0);
    
    }
  );

  test('deve lançar erro ao finlizar jornada inexistente', ()async{
    expect(
          () async => await JornadaRepository.finalizar(999, 1100.0),
      throwsA(isA<Exception>()),
    );
  });


});
}


