import 'package:flutter/material.dart';
import 'package:pesca_praticas/pages/more_pages/gauge%20bloc/bloc/gauge_bloc.dart';
import 'package:pesca_praticas/pages/more_pages/gauge%20bloc/bloc/gauge_stream.dart';
import 'package:pesca_praticas/pages/more_pages/gauge/widgets/gauge_inicial.dart';

class GaugePage2 extends StatefulWidget {
  const GaugePage2({super.key});

  @override
  State<GaugePage2> createState() => _GaugePageState2();
}

class _GaugePageState2 extends State<GaugePage2> {
  final controller = GaugeStream();
  final keys = GlobalKey<FormState>();
  final ctrl1 = TextEditingController();
  final ctrl2 = TextEditingController();
  double? calcular = 1.0;

  @override
  void dispose() {
    super.dispose();
    ctrl1.dispose();
    ctrl2.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gauge Page2'),
      ),
      body: Form(
        key: keys,
        child: Column(
          children: [
            StreamBuilder<GaugeBloc>(
              stream: controller.valorOut,
              builder: (context, snapshot) {
                var total = snapshot.data?.valor ?? 0;
                return GaugeInicial(calcular: total);
              },
            ),
            StreamBuilder<GaugeBloc>(
              stream: controller.valorOut,
              builder: (context, snapshot) {
                return Visibility(
                  visible: snapshot.data is GaugeBloc2,
                  child: Center(
                    child: CircularProgressIndicator(backgroundColor: Colors.black,color: Colors.red,),
                  ),
                );
              },
            ),
            TextFormField(
              controller: ctrl1,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Não pode ser nulo";
                }
                return null;
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: ctrl2,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Não pode ser nulo";
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () {
                var key = keys.currentState?.validate() ?? false;
                if (key) {
                  double c1 = double.parse(ctrl1.text);
                  double c2 = double.parse(ctrl2.text);
                  controller.calculando(valor1: c1, valor2: c2);
                }
              },
              child: Text("Oi"),
            ),
          ],
        ),
      ),
    );
  }
}
