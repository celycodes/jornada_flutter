import 'dart:async';
import 'dart:math';

import 'package:b_flutter_gerencia_de_estado/bloc_pattern/imc_state.dart';

class ImcBlocPatternController {
  final _imcStreamController = StreamController<ImcState>()
    ..add(ImcState(imc: 0));

  Stream<ImcState> get imcOut => _imcStreamController.stream;

  Future<void> calcularImc({required double peso, required double altura}) async {
    _imcStreamController.add(ImcState(imc: 0));
    await Future.delayed(const Duration(seconds: 1));
    final imc = peso / pow(altura, 2);
    _imcStreamController.add(ImcState(imc: imc));
  }

  void dispose() {
    _imcStreamController.close();
  }
}