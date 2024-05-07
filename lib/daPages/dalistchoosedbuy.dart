import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/material.dart';
import 'package:hmama/Cards/BuyCard.dart';
import 'package:hmama/Models/CardList.dart';
import 'package:hmama/daColors.dart';
import 'package:hmama/daPages/daBuyDetails.dart';

class daListchoosedbuy extends StatefulWidget {
  final int data;
  const daListchoosedbuy({super.key, required this.data});

  @override
  State<daListchoosedbuy> createState() => _ListchoosedbuyState();
}

class _ListchoosedbuyState extends State<daListchoosedbuy> {
  List<CardList> Cloths = [
    CardList(
        id: 0,
        pic: 'Image/Cloths/cloths1.jpg',
        name: 'فستان أبيض',
        price: '2000 دج'),
    CardList(
        id: 1,
        pic: 'Image/Cloths/cloths2.jpg',
        name: 'قميص أزرق',
        price: '1500 دج'),
    CardList(
        id: 5,
        pic: 'Image/Cloths/cloths3.jpg',
        name: 'سترة أبيض',
        price: '1700 دج'),
    CardList(
        id: 6,
        pic: 'Image/Cloths/cloths4.jpg',
        name: 'قميص بالذراع',
        price: '2200 دج'),
  ];

  List<CardList> Jolery = [
    CardList(
        id: 2,
        pic: 'Image/Jolery/jolery1.jpg',
        name: 'سوار بتعليقة فراشة',
        price: '1000 دج'),
    CardList(
        id: 7,
        pic: 'Image/Jolery/jolery2.jpg',
        name: 'أقراط الفراشة',
        price: '750 دج'),
    CardList(
        id: 8,
        pic: 'Image/Jolery/jolery3.jpg',
        name: 'مشبك شعر',
        price: '300 دج'),
    CardList(
        id: 10,
        pic: 'Image/Jolery/jolery4.jpg',
        name: 'سوار البرسيم',
        price: '550 دج'),
  ];

  List<CardList> Packs = [
    CardList(
        id: 3,
        pic: 'Image/Packs/packs1.jpg',
        name: 'حقيبة سوداء',
        price: '3200 دج'),
    CardList(
        id: 4,
        pic: 'Image/Packs/packs2.jpg',
        name: 'حقيبة بيضاء',
        price: '3400 دج'),
    CardList(
        id: 9,
        pic: 'Image/Packs/packs3.jpg',
        name: 'حقيبة الظهر',
        price: '4400 دج'),
    CardList(
        id: 11,
        pic: 'Image/Packs/packs4.jpg',
        name: 'حقيبة وردية',
        price: '2800 دج')
  ];

  List<CardList> currentList = [];

  @override
  void initState() {
    super.initState();
    currentList = (widget.data == 0)
        ? Cloths
        : (widget.data == 1)
            ? Jolery
            : Packs;
  }

  List<String> Title = ['ألبسة', 'اكسسوارات', 'حقائب'];

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
                            builder: (context) => daBuyDetails(data: item.id)));
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
