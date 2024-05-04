import 'package:flutter/material.dart';
import 'package:hmama/daColors.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hmama/daPages/daHome.dart';
import 'package:hmama/daPages/daList.dart';
import 'package:hmama/daPages/daSettings.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int tab = 0;
  PageController Pagetab = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: Pagetab,
        scrollBehavior: MaterialScrollBehavior(),
        children: [daHome(), daList(), daSettings()],
      ),
      bottomNavigationBar: Container(
        color: daBetween,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: GNav(
              padding: EdgeInsets.all(16),
              tabBackgroundColor: daBright.withOpacity(0.5),
              color: daDark,
              backgroundColor: daBetween,
              gap: 4,
              onTabChange: (value) {
                setState(() {
                  tab = value;
                  print('This is the page :  $value');
                });
              },
              tabs: [
                GButton(
                  icon: Icons.search_outlined,
                  text: 'إكتشاف',
                ),
                GButton(
                  icon: Icons.list_outlined,
                  text: 'تصنيفات',
                ),
                GButton(
                  icon: Icons.person_outline,
                  text: 'الحساب',
                ),
              ]),
        ),
      ),
    );
  }
}
