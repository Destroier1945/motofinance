class Jornada{
  final int? id;
  final DateTime inicio;
  final DateTime? fim;
  final double kmInicial;
  final double? kmFinal;

  Jornada({
     this.id,
    required this.inicio,
     this.fim,
    required this.kmInicial,
     this.kmFinal});

  Map<String, dynamic>toMap() {
    return {
      'id': id,
      'inicio': inicio.toIso8601String(),
      'fim': fim?.toIso8601String(),
      'kmInicial': kmInicial,
      'kmFinal': kmFinal,
    };
  }
  factory Jornada.fromMap(Map<String, dynamic> map) {
    return Jornada(
      id: map['id'] as int?,
      inicio: DateTime.parse(map['inicio'] as String),
      fim: map['fim'] != null ? DateTime.parse(map['fim'] as String) : null,
      kmInicial: (map['kmInicial'] as num).toDouble(),
      kmFinal: map['kmFinal'] != null ? (map['kmFinal'] as num).toDouble() : null,
    );
  }
}