import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/material.dart';
import 'package:hmama/ListPages/ListofRent.dart';
import 'package:hmama/ListPages/ListsofBuy.dart';
import 'package:hmama/daColors.dart';

class daList extends StatefulWidget {
  const daList({super.key});

  @override
  State<daList> createState() => _daListState();
}

class _daListState extends State<daList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dawhite,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10, top: 10),
              child: Text(
                '• تصنيفات الشراء',
                textAlign: TextAlign.right,
                style: ArabicTextStyle(
                  arabicFont: ArabicFont.dubai,
                  fontSize: 25,
                ),
              ),
            ),
            Divider(
              color: daThird,
              thickness: 1,
              indent: 15,
              endIndent: 180,
            ),
            Container(
              height: 500,
              child: listofBuy(),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, top: 10),
              child: Text(
                '• تصنيفات الكراء',
                textAlign: TextAlign.right,
                style: ArabicTextStyle(
                  arabicFont: ArabicFont.dubai,
                  fontSize: 25,
                ),
              ),
            ),
            Divider(
              color: daThird,
              thickness: 1,
              indent: 15,
              endIndent: 180,
            ),
            Container(
              height: 500,
              child: listofRent(),
            ),
          ],
        ),
      ),
    );
  }
}
