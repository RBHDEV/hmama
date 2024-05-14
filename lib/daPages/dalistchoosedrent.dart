import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/material.dart';
import 'package:hmama/Cards/BuyCard.dart';
import 'package:hmama/Models/CardList.dart';
import 'package:hmama/daColors.dart';
import 'package:hmama/daPages/daRentDetails.dart';

class daListchoosedrent extends StatefulWidget {
  final int data;
  const daListchoosedrent({super.key, required this.data});

  @override
  State<daListchoosedrent> createState() => _ListchoosedbuyState();
}

class _ListchoosedbuyState extends State<daListchoosedrent> {
  List<CardList> Tradition = [
    CardList(
        id: 0,
        pic: 'Image/Tradition/trad1.jpeg',
        name: 'ثياب تقليدي',
        price: '3500 دج'),
    CardList(
        id: 1,
        pic: 'Image/Tradition/trad2.jpeg',
        name: 'فستان تقليدي',
        price: '5500 دج'),
    CardList(
        id: 4,
        pic: 'Image/Tradition/trad3.jpeg',
        name: 'ثياب تقليدي',
        price: '9500 دج'),
    CardList(
        id: 9,
        pic: 'Image/Tradition/trad4.jpeg',
        name: 'فستان تقليدي',
        price: '6800 دج'),
  ];

  List<CardList> Night = [
    CardList(
        id: 3,
        pic: 'Image/Night/night1.jpeg',
        name: 'ثوب أبيض',
        price: '5000 دج'),
    CardList(
        id: 7,
        pic: 'Image/Night/night2.jpeg',
        name: 'ثوب وردي',
        price: '6000 دج'),
    CardList(
        id: 8,
        pic: 'Image/Night/night3.jpeg',
        name: 'ثوب طويل وردي',
        price: '9000 دج'),
    CardList(
        id: 11,
        pic: 'Image/Night/night4.jpeg',
        name: 'ثوب طويل أبيض',
        price: '11000 دج'),
  ];

  List<CardList> Wed = [
    CardList(
        id: 2,
        pic: 'Image/Wed/wed1.jpeg',
        name: 'فستان زفاف',
        price: '15000 دج'),
    CardList(
        id: 5,
        pic: 'Image/Wed/wed2.jpeg',
        name: 'فستان زفاف',
        price: '13000 دج'),
    CardList(
        id: 6,
        pic: 'Image/Wed/wed3.jpeg',
        name: 'فستان زفاف',
        price: '18000 دج'),
    CardList(
        id: 10,
        pic: 'Image/Wed/wed4.jpeg',
        name: 'فستان زفاف',
        price: '22000 دج'),
  ];

  List<CardList> currentList = [];

  @override
  void initState() {
    super.initState();
    currentList = (widget.data == 0)
        ? Tradition
        : (widget.data == 1)
            ? Night
            : Wed;
  }

  List<String> Title = ['ألبسة تقليدية', 'فساتين سهرة', 'فساتين زفاف'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dawhite,
      appBar: AppBar(
        title: Text('تصنيفات'),
        backgroundColor: daPrimary,
        foregroundColor: daBright,
        titleTextStyle: ArabicTextStyle(
            arabicFont: ArabicFont.avenirArabic,
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              Title[widget.data],
              style: ArabicTextStyle(
                  arabicFont: ArabicFont.cairo,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
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
              child: Padding(
            padding: const EdgeInsets.all(20),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.8,
              ),
              itemCount: currentList.length,
              itemBuilder: (context, index) {
                CardList item = currentList[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                daRentDetails(data: item.id)));
                    print('This is the item : ${item.id}');
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
          )),
        ],
      ),
    );
  }
}
