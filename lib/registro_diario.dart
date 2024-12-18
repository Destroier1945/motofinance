class RegistroDiario {
  DateTime dia;
  int kmInicial;
  int kmFinal;
  List<int> ganhos;
  List<int> despesas;

  RegistroDiario(
      {required this.dia,
      required this.kmInicial,
      required this.kmFinal,
      required this.ganhos,
      required this.despesas});
}
