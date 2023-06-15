import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ImcSetStatePage extends StatelessWidget {
  const ImcSetStatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imc SetState'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SfRadialGauge(
                axes: [
                  RadialAxis(
                    showLabels: false,
                    showAxisLine: false,
                    showTicks: false,
                    minimum: 2.5,
                    maximum: 47.9,
                    ranges: [
                      // 17.04 minutagem do video onde parei
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
