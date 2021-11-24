import 'models/imcResultado.model.dart';

abstract class InterfaceImcUtil {
  ImcResultado calcularImc(int peso, int altura);
}

class ImcUtil implements InterfaceImcUtil {
  @override
  ImcResultado calcularImc(int peso, int altura) {
    final alturaInMeters = altura / 100;
    double imc = peso / (alturaInMeters * alturaInMeters);
    return ImcResultado(imc);
  }
}
