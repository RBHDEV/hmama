import 'dart:ui';

import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hmama/daPages/dalistchoosedbuy.dart';

class listofBuy extends StatelessWidget {
  List<String> Icons = [
    'Image/Icons/dress.png',
    'Image/Icons/necklace.png',
    'Image/Icons/handbag.png',
  ];

  List<String> Title = ['ألبسة', 'اكسسوارات', 'حقائب'];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => daListchoosedbuy(
                          data: index,
                        )));
          },
          child: Container(
            height: 150,
            decoration: BoxDecoration(
              color: (index == 0)
                  ? Color.fromARGB(255, 116, 105, 182)
                  : (index == 1)
                      ? Color.fromARGB(255, 173, 136, 198)
                      : Color.fromARGB(255, 225, 175, 209),
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.black
                      .withOpacity(0.5), // Shadow color with some opacity
                  spreadRadius: 0, // Spread radius
                  blurRadius: 5, // Blur radius
                  offset: Offset(0, 1), // Changes position of shadow
                ),
              ],
            ),
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Align(
                      alignment: Alignment(0.7, 0),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        child: Text(
                          Title[index],
                          style: ArabicTextStyle(
                              arabicFont: ArabicFont
                                  .cairo, // Assuming this class and constructor exists
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      )),
                  Align(
                    alignment: Alignment(-1, 0),
                    child: Image.asset(
                      Icons[index],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
