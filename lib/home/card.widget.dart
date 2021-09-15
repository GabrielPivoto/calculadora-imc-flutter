import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  CustomCard({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(
            widget.title,
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
