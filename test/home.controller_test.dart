import 'package:calculadora_imc/home/home.controller.dart';
import 'package:calculadora_imc/imc.util.dart';
import 'package:calculadora_imc/models/imcResultado.model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'home.controller_test.mocks.dart';

@GenerateMocks([ImcUtil, HomeController])
void main() {
  final mockImcUtil = MockImcUtil();
  final mockController = MockHomeController();
  final controller = HomeController(mockImcUtil);

  test("Verificação de chamada do método `calcularImc`", () {
    when(mockImcUtil.calcularImc(any, any)).thenReturn(ImcResultado(10));
    controller.calcular(70, 170);
    controller.calcular(80, 180);
    verify(mockImcUtil.calcularImc(any, any)).called(2);
  });

  test("Classificação correta do IMC para valores de ponto flutuante", () {
    when(mockController.calcular(any, any)).thenReturn(ImcResultado(30.55));
    final resultado = mockController.calcular(70, 100);
    expect(resultado.classificacao, ImcClassificacao.Obesidade_I);
  });
}
