import 'package:flutter/material.dart';
import 'package:hmama/Home.dart';

void main() {
  runApp(const hmama());
}

class hmama extends StatelessWidget {
  const hmama({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hmama',
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
      },
    );
  }
}
