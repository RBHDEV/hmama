import 'package:flutter/material.dart';
import 'package:hmama/Cards/BuyCard.dart';
import 'package:hmama/Models/CardList.dart';

class RentList extends StatefulWidget {
  const RentList({super.key});

  @override
  State<RentList> createState() => _BuyListState();
}

class _BuyListState extends State<RentList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.8,
        ),
        itemCount: simpleRentList.length,
        itemBuilder: (context, index) {
          CardList item = simpleRentList[index];
          return Card(
            elevation: 5,
            child: buy(
              pic: item.pic,
              name: item.name,
              price: item.price,
            ),
          );
        },
      ),
    );
  }
}
