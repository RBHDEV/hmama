import 'package:flutter/material.dart';
import 'package:hmama/Cards/BuyCard.dart';
import 'package:hmama/Models/CardList.dart';
import 'package:hmama/daPages/daBuyDetails.dart';

class BuyList extends StatefulWidget {
  const BuyList({super.key});

  @override
  State<BuyList> createState() => _BuyListState();
}

class _BuyListState extends State<BuyList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.8,
        ),
        itemCount: simpleBuyList.length,
        itemBuilder: (context, index) {
          CardList item = simpleBuyList[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => daBuyDetails(data: index)));
            },
            child: Card(
              elevation: 5,
              child: buy(
                pic: item.pic,
                name: item.name,
                price: item.price,
              ),
            ),
          );
        },
      ),
    );
  }
}
