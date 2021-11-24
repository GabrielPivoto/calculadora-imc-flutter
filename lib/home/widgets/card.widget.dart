import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String value;
  final Widget child;
  CustomCard({required this.title, required this.value, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromRGBO(180, 180, 180, 1),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              value,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 10),
            child
          ],
        ),
      ),
    );
  }
}
