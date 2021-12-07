import 'package:calculadora_imc/models/imcResultado.model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Classificação correta do IMC em faixa intermediária (sobrepeso)", () {
    final imcResultado = ImcResultado(26);
    expect(imcResultado.classificacao, equals(ImcClassificacao.Sobrepeso));
  });

  test("Classificação correta do IMC em faixa inicial", () {
    final imcResultado = ImcResultado(2);
    expect(imcResultado.classificacao, equals(ImcClassificacao.Abaixo));
  });

  test("Classificação correta do IMC em faixa final", () {
    final imcResultado = ImcResultado(42);
    expect(imcResultado.classificacao, equals(ImcClassificacao.Obesidade_III));
  });
}
