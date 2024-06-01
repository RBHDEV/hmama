import 'package:flutter/material.dart';
import 'package:hmama/Home.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hmama/LoginPage.dart';
import 'package:hmama/daPages/daHome.dart';

void main() {
  runApp(const hmama());
}

class hmama extends StatelessWidget {
  const hmama({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'حمامة',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar'), // Arabic
      ],
      initialRoute: '/LoginPage',
      routes: {
        '/': (context) => Home(),
        '/discover': (context) => daHome(),
        '/LoginPage': (context) => LoginPage(),
      },
    );
  }
}
