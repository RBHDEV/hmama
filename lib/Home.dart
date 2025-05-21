import 'package:flutter/material.dart';
import 'package:hmama/daColors.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hmama/daPages/daHome.dart';
import 'package:hmama/daPages/daList.dart';
import 'package:hmama/daPages/daSettings.dart';
import 'package:arabic_font/arabic_font.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int tab = 0;

  final List<Widget> _pages = [
    daHome(),
    daList(),
    daSettings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          'Image/AppNewLogo.jpg',
        ),
        title: Text('حمامة'),
        titleTextStyle: ArabicTextStyle(
            arabicFont: ArabicFont.elMessiri,
            fontSize: 25,
            fontWeight: FontWeight.w400),
        foregroundColor: daBright,
        backgroundColor: daPrimary,
      ),
      body: IndexedStack(
        index: tab,
        children: _pages,
      ),
      bottomNavigationBar: GNav(
          tabBackgroundColor: daBright.withValues(alpha: 0.5),
          color: daDark,
          backgroundColor: daBetween,
          gap: 4,
          onTabChange: (value) {
            setState(() {
              tab = value;
            });
          },
          tabs: [
            GButton(
              icon: (tab == 0) ? Icons.search : Icons.search_outlined,
              text: 'إكتشاف',
              textStyle: ArabicTextStyle(
                  arabicFont: ArabicFont.avenirArabic,
                  fontWeight: FontWeight.w600),
            ),
            GButton(
              icon: (tab == 1) ? Icons.list : Icons.list_outlined,
              text: 'تصنيفات',
              textStyle: ArabicTextStyle(
                  arabicFont: ArabicFont.avenirArabic,
                  fontWeight: FontWeight.w600),
            ),
            GButton(
              icon: (tab == 2) ? Icons.person : Icons.person_outline,
              text: 'الحساب',
              textStyle: ArabicTextStyle(
                  arabicFont: ArabicFont.avenirArabic,
                  fontWeight: FontWeight.w600),
            ),
          ]),
    );
  }
}
