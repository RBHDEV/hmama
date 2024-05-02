import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue.shade900,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 50),
            child: Row(
              children: [
                SizedBox(
                  width: 175,
                  height: 175,
                  child: GestureDetector(
                    onTap: () {
                      print("YAAAAAAAAY");
                    },
                    child: Container(
                      color: Colors.grey.shade200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.ac_unit), Text('Law')],
                      ),
                    ),
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: 175,
                  height: 175,
                  child: Container(
                    color: Colors.grey.shade200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.ac_unit), Text('Law')],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
