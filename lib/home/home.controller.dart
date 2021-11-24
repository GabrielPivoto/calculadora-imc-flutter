import 'package:calculadora_imc/imc.util.dart';
import 'package:calculadora_imc/models/imcResultado.model.dart';

class HomeController {
  final ImcUtil imcUtil;

  HomeController(this.imcUtil);

  ImcResultado calcular(int peso, int altura) {
    return imcUtil.calcularImc(peso, altura);
  }
}
