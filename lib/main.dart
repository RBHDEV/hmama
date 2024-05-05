import 'package:flutter/material.dart';
import 'package:hmama/Home.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
      },
    );
  }
}
