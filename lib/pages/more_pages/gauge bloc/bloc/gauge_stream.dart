import 'dart:async';

import 'package:pesca_praticas/pages/more_pages/gauge%20bloc/bloc/gauge_bloc.dart';

class GaugeStream {
  final _streamBase = StreamController<GaugeBloc>.broadcast()
    ..add(GaugeBloc(valor: 0));
  Stream<GaugeBloc> get valorOut => _streamBase.stream;

  Future<void> calculando(
      {required double valor1, required double valor2}) async {
    _streamBase.add(GaugeBloc2());
    await Future.delayed(Duration(seconds: 1));
    double total = valor1 + valor2;
    _streamBase.add(GaugeBloc(valor: total));
  }

  void dispose() {
    _streamBase.close();
  }
}
