enum ImcClassificacao {
  Abaixo,
  Normal,
  Sobrepeso,
  Obesidade_I,
  Obesidade_II,
  Obesidade_III
}

class ImcResultado {
  final Map<ImcClassificacao, List<dynamic>> referencia = {
    ImcClassificacao.Abaixo: [null, 18.4],
    ImcClassificacao.Normal: [18.5, 24.9],
    ImcClassificacao.Sobrepeso: [25, 29.9],
    ImcClassificacao.Obesidade_I: [30, 34.9],
    ImcClassificacao.Obesidade_II: [35, 39.9],
    ImcClassificacao.Obesidade_III: [40, null],
  };
  final double imc;

  ImcResultado(this.imc);
}
