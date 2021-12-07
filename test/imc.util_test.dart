import 'dart:math' as math;
import 'package:calculadora_imc/imc.util.dart';
import 'package:calculadora_imc/models/imcResultado.model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final imcUtil = ImcUtil();
  final randomUtil = math.Random();

  test("IMC correto para valores aleatórios", () {
    final peso = randomUtil.nextInt(248) + 2;
    final alturaEmCm = randomUtil.nextInt(225) + 25;
    final respostaCorreta = peso / math.pow(alturaEmCm / 100, 2);

    final respostaCalculada = imcUtil.calcularImc(peso, alturaEmCm);
    expect(respostaCalculada.imc, respostaCorreta);
  });

  test("IMC nulo para peso igual a zero", () {
    ImcResultado imcResultado = imcUtil.calcularImc(0, 180);
    expect(imcResultado.imc, equals(0));
  });

  test("IMC infinito para altura igual a zero", () {
    ImcResultado imcResultado = imcUtil.calcularImc(70, 0);
    expect(imcResultado.imc, equals(double.infinity));
  });
}
