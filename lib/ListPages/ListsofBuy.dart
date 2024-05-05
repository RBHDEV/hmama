import 'package:flutter/material.dart';

class ListOfBuy extends StatefulWidget {
  const ListOfBuy({super.key});

  @override
  State<ListOfBuy> createState() => _ListOfBuyState();
}

class _ListOfBuyState extends State<ListOfBuy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List of Purchases"),
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Card(
              color: Colors.grey.shade200,
              child: ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text('Item ${index + 1}'),
                subtitle: Text('Description of item ${index + 1}'),
              ),
            ),
          );
        },
      ),
    );
  }
}
