// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/cupertino.dart';

class RegistroDiario extends ChangeNotifier {
  int kmInicial = 0;
  int kmFinal = 0;
  int ganhoDiario = 0;
  int ganhos = 0;
  int despesas = 0;

  set kmInicio(int km) {
    kmInicial = km;
    notifyListeners();
  }

  set kmFim(int km) {
    kmFinal = km;
    notifyListeners();
  }

  set rendas(int rendas) {
    ganhos = rendas;
    notifyListeners();
  }

  int get getRendas => ganhos;


  void setGanhoDiario(int ganho) {
    ganhoDiario = (ganho / getKmRodado().toInt()) as int;
    notifyListeners();
  }

  num getKmRodado() {
    if (kmInicial != null && kmFinal != null) {
      return kmFinal - kmInicial;
    }
    return 0.0;
  }

  num getGanhoTotal() {
    if (ganhos != null && despesas != null) {
      return ganhos - despesas;
    }
    return 0.0;
  }

  num getGanhoPorKm() {
    if (getKmRodado() > 0) {
      return getGanhoTotal() / getKmRodado();
    }
    return 0.0;
  }
}