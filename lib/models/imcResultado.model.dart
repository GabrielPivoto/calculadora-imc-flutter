enum ImcClassificacao {
  Abaixo,
  Normal,
  Sobrepeso,
  Obesidade_I,
  Obesidade_II,
  Obesidade_III
}

class ImcResultado {
  final Map<ImcClassificacao, List<dynamic>> _referencia = {
    ImcClassificacao.Abaixo: [null, 18.4],
    ImcClassificacao.Normal: [18.5, 24.9],
    ImcClassificacao.Sobrepeso: [25, 29.9],
    ImcClassificacao.Obesidade_I: [30, 34.9],
    ImcClassificacao.Obesidade_II: [35, 39.9],
    ImcClassificacao.Obesidade_III: [40, null],
  };
  final double imc;

  ImcResultado(this.imc);

  ImcClassificacao get classificacao => _referencia.entries.firstWhere((faixa) {
        final min = faixa.value.first ?? -9999999;
        final max = faixa.value.last ?? 9999999;
        final imc = double.parse(this.imc.toStringAsFixed(1));
        if (imc >= min && imc <= max) return true;
        return false;
      }).key;
}
