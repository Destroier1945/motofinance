class Ganho{
  final int id;
  final int jornadaId;
  final double valor;
  final String descricao;

  Ganho({
    required this.id,
    required this.jornadaId,
    required this.valor,
    required this.descricao,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'jornadaId': jornadaId,
      'valor': valor,
      'descricao': descricao,
    };
  }

  factory Ganho.fromMap(Map<String, dynamic> map) {
    return Ganho(
      id: map['id'],
      jornadaId: map['jornadaId'],
      valor: map['valor'],
      descricao: map['descricao'],
    );
  }

}