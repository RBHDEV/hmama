import 'package:flutter/material.dart';

class buy extends StatefulWidget {
  final String pic;
  final String name;
  final String price;
  const buy(
      {super.key, required this.pic, required this.name, required this.price});

  @override
  State<buy> createState() => _buyState();
}

class _buyState extends State<buy> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.tightFor(width: 175, height: 175),
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Image(
                alignment: Alignment(0, -0.5),
                fit: BoxFit.cover,
                width: double.infinity,
                image: AssetImage(widget.pic)),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(4.0),
              child: Text(widget.name, textAlign: TextAlign.center),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(4.0),
              child: Text(
                widget.price,
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.green.shade800, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
