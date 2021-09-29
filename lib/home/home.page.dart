import 'package:flutter/material.dart';

import 'card.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade700,
        appBar: AppBar(
          title: Text('Calculadora IMC'),
          backgroundColor: Colors.grey,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CustomCard(
                        title: "Masculino",
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Expanded(
                      child: CustomCard(
                        title: "Feminino",
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                CustomCard(
                  title: "Altura",
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CustomCard(
                        title: "Peso",
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Expanded(child: CustomCard(title: "Idade"))
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  child: Text(
                    "Calcular",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
