import 'package:flutter/material.dart';
import 'package:pesca_praticas/pages/more_pages/gauge/widgets/gauge_range_page.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class GaugeInicial extends StatelessWidget {
  final double calcular;
  const GaugeInicial({super.key, required this.calcular});

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      axes: [
        RadialAxis(
          minimum: 1,
          interval: 10,
          maximum: 8,
          ranges: [
            GaugeRangePage(
              color: Colors.red,
              start: 1.0,
              end: 3.0,
              label: "abcdefg",
            ),
            GaugeRangePage(
              color: Colors.blue,
              start: 3.0,
              end: 6.0,
              label: "abcdefg",
            ),
            GaugeRangePage(
              color: Colors.green,
              start: 6.0,
              end: 8.0,
              label: "abcdefg",
            ),
          ],
          pointers: [
            NeedlePointer(
              value: calcular,
              enableAnimation: true,
            ),
          ],
        ),
      ],
    );
  }
}
