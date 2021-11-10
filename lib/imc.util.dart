import 'models/imcResultado.model.dart';

abstract class InterfaceImcUtil {
  ImcResultado calcularImc(double peso, double altura);
}

class ImcUtil implements InterfaceImcUtil {
  @override
  ImcResultado calcularImc(double peso, double altura) {
    double imc = peso / (altura * altura);
    return ImcResultado(imc);
  }
}
