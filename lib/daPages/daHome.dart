import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/material.dart';
import 'package:hmama/HomePages/BuyList.dart';
import 'package:hmama/HomePages/RentList.dart';
import 'package:hmama/daColors.dart';

class daHome extends StatefulWidget {
  const daHome({super.key});

  @override
  State<daHome> createState() => _HomeState();
}

class _HomeState extends State<daHome> {
  int aPage = 0;
  PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dawhite,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 150), // Animation duration
                width: aPage == 0 ? 120 : 100, // Width changes based on state
                height: 50,
                curve: Curves.ease,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor:
                          (aPage == 0) ? daThird : daThird.withOpacity(0.6),
                      foregroundColor: daBright,
                      textStyle: ArabicTextStyle(
                          arabicFont: ArabicFont.avenirArabic,
                          fontSize: 18,
                          fontWeight: (aPage == 0)
                              ? FontWeight.bold
                              : FontWeight.w400)),
                  onPressed: () {
                    setState(() {
                      aPage = 0;
                      _pageController.animateToPage(aPage,
                          duration: Duration(milliseconds: 250),
                          curve: Curves.ease);
                    });
                  },
                  child: Text('للشراء'),
                ),
              ),
              Container(
                height: 50,
                child: VerticalDivider(
                  // Divider between buttons
                  color: daThird,
                  thickness: 1,
                  indent: 10,
                  endIndent: 10,
                ),
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 150), // Animation duration
                width: aPage == 1 ? 120 : 100, // Width changes based on state
                height: 50,
                curve: Curves.ease,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor:
                          (aPage == 1) ? daThird : daThird.withOpacity(0.6),
                      foregroundColor: daBright,
                      textStyle: ArabicTextStyle(
                          arabicFont: ArabicFont.avenirArabic,
                          fontSize: 18,
                          fontWeight: (aPage == 1)
                              ? FontWeight.bold
                              : FontWeight.w400)),
                  onPressed: () {
                    setState(() {
                      aPage = 1;
                      _pageController.animateToPage(aPage,
                          duration: Duration(milliseconds: 250),
                          curve: Curves.ease);
                    });
                  },
                  child: Text('للكراء'),
                ),
              ),
            ],
          ),
          Container(
            height: 30,
            child: Divider(
              // Divider between buttons
              color: daThird,
              thickness: 1,
              indent: 50,
              endIndent: 50,
            ),
          ),
          Expanded(
              child: PageView(
            controller: _pageController,
            onPageChanged: (value) {
              setState(() {
                aPage = value;
              });
            },
            children: [BuyList(), RentList()],
          )),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
