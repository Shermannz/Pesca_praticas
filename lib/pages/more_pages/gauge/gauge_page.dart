import 'package:flutter/material.dart';
import 'package:pesca_praticas/pages/more_pages/gauge/widgets/gauge_inicial.dart';

class GaugePage extends StatefulWidget {
  const GaugePage({super.key});

  @override
  State<GaugePage> createState() => _GaugePageState();
}

class _GaugePageState extends State<GaugePage> {
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

  void _somar(double c1, double c2) {
    setState(() {
      calcular = c1 + c2;
    });
  }

  // void _aumentar() {
  //   setState(() {
  //     calcular++;
  //   });
  // }

  // void _diminuir() {
  //   setState(() {
  //     calcular--;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gauge Page'),
      ),
      body: Form(
        key: keys,
        child: Column(
          children: [
            GaugeInicial(calcular: calcular ?? 0),
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
                  double? c1 = double.parse(ctrl1.text);
                  double? c2 = double.parse(ctrl2.text);
                  _somar(c1, c2);
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
