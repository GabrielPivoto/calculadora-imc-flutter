import 'package:calculadora_imc/models/imcResultado.model.dart';
import 'package:flutter/material.dart';

import '../imc.util.dart';
import 'home.controller.dart';
import 'widgets/card.widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final calculator = ImcUtil();
  late final HomeController controller;
  ImcResultado resultado = ImcResultado(24.49);
  int heightInCm = 175;
  int weightInKg = 75;

  @override
  void initState() {
    controller = HomeController(calculator);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade700,
        appBar: AppBar(
          title: Text('Calculadora IMC'),
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30, 30, 30, 26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomCard(
                title: "IMC",
                value: resultado.imc.toStringAsFixed(2),
                child: Text(
                    resultado.classificacao
                        .toString()
                        .split('.')[1]
                        .replaceAll('_', ' '),
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500)),
              ),
              CustomCard(
                title: "ALTURA (cm)",
                value: heightInCm.toString(),
                child: Slider(
                  value: heightInCm.toDouble(),
                  activeColor: Colors.orange.shade900,
                  thumbColor: Colors.orange.shade900,
                  inactiveColor: Color.fromRGBO(160, 160, 160, 1),
                  min: 20,
                  max: 250,
                  onChanged: (value) {
                    setState(() {
                      heightInCm = value.toInt();
                    });
                  },
                ),
              ),
              CustomCard(
                title: "PESO (kg)",
                value: weightInKg.toString(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                        radius: 20,
                        backgroundColor: Color.fromRGBO(140, 140, 140, 1),
                        child: IconButton(
                          onPressed: weightInKg > 2
                              ? () {
                                  setState(() {
                                    weightInKg -= 1;
                                  });
                                }
                              : null,
                          icon: Icon(Icons.remove_rounded, color: Colors.white),
                        )),
                    SizedBox(width: 20),
                    CircleAvatar(
                        radius: 20,
                        backgroundColor: Color.fromRGBO(140, 140, 140, 1),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              weightInKg += 1;
                            });
                          },
                          icon: Icon(Icons.add_rounded, color: Colors.white),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: GestureDetector(
          onTap: () {
            final _resultado = controller.calcular(weightInKg, heightInCm);
            setState(() {
              resultado = _resultado;
            });
          },
          child: Container(
            height: 60,
            color: Colors.orange.shade900,
            child: Center(
              child: Text(
                "CALCULAR",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w800),
              ),
            ),
          ),
        ));
  }
}
