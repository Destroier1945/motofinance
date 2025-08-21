class Despesa{
  final int id;
  final int jornalId;
  final double valor;
  final String categoria;

  Despesa({
    required this.id,
    required this.jornalId,
    required this.valor,
    required this.categoria,
  });

  Map<String, dynamic>toMap() {
    return {
      'id': id,
      'jornalId': jornalId,
      'valor': valor,
      'categoria': categoria,
    };
  }
  factory Despesa.fromMap(Map<String, dynamic> map) {
    return Despesa(
      id: map['id'],
      jornalId: map['jornalId'],
      valor: map['valor'],
      categoria: map['categoria'],
    );
  }
}