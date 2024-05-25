import 'dart:async';

import 'package:pesca_praticas/pages/more_pages/quiz/bloc_base.dart';

class BlocQuiz {
  final _streamBase = StreamController<BlocBase>.broadcast()
    ..add(
      BlocBase(
        resultado: "",
        quantidade: 0,
      ),
    );

  Stream<BlocBase> get streamOut => _streamBase.stream;

  var quantidade = 0;
  var result = "";
  var opcao1 = 0;
  var opcao2 = 0;
  Future<void> pegandoValores(List<String> list) async {
    if (quantidade < list.length - 1) {
      quantidade++;
    }
    if (quantidade == list.length - 1) {
      result = opcao1 > opcao2 ? "É brasileiro" : "Não é brasileiro";
    }
    _streamBase.add(BlocBase(quantidade: quantidade, resultado: result));
  }

  void ebrasileiro() {
    opcao1++;
  }

  void naoebrasileiro() {
    opcao2++;
  }
}
