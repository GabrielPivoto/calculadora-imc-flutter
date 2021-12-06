import 'package:calculadora_imc/imc.util.dart';
import 'package:calculadora_imc/models/imcResultado.model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  ImcUtil imcUtil = new ImcUtil();

  test("Verificação do valor correto de IMC", () {
    ImcResultado imcResultado = imcUtil.calcularImc(70, 100);
    expect(imcResultado.imc, equals(70.00));
  });

  test("Verificação da classificação correta do IMC", () {
    ImcResultado imcResultado = imcUtil.calcularImc(70, 100);
    expect(imcResultado.classificacao, equals(ImcClassificacao.Obesidade_III));
  });

  test("Verificação quando altura é zerada", () {
    ImcResultado imcResultado = imcUtil.calcularImc(70, 0);
    expect(imcResultado.imc, equals(double.infinity));
  });
}
