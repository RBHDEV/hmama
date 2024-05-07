import 'package:flutter/material.dart';

class CardList {
  int id;
  String pic;
  String name;
  String price;

  CardList(
      {required this.id,
      required this.pic,
      required this.name,
      required this.price});
}

List<CardList> simpleBuyList = [
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
      id: 2,
      pic: 'Image/Jolery/jolery1.jpg',
      name: 'سوار بتعليقة فراشة',
      price: '1000 دج'),
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
      id: 5,
      pic: 'Image/Cloths/cloths3.jpg',
      name: 'سترة أبيض',
      price: '1700 دج'),
  CardList(
      id: 6,
      pic: 'Image/Cloths/cloths4.jpg',
      name: 'قميص بالذراع',
      price: '2200 دج'),
  CardList(
      id: 7,
      pic: 'Image/Jolery/jolery3.jpg',
      name: 'مشبك شعر',
      price: '300 دج'),
  CardList(
      id: 8,
      pic: 'Image/Jolery/jolery4.jpg',
      name: 'سوار البرسيم',
      price: '550 دج'),
  CardList(
      id: 9,
      pic: 'Image/Packs/packs3.jpg',
      name: 'حقيبة الظهر',
      price: '4400 دج'),
  CardList(
      id: 11,
      pic: 'Image/Jolery/jolery2.jpg',
      name: 'أقراط الفراشة',
      price: '750 دج'),
  CardList(
      id: 12,
      pic: 'Image/Packs/packs4.jpg',
      name: 'حقيبة وردية',
      price: '2800 دج')
];

List<CardList> simpleRentList = [
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
      id: 2, pic: 'Image/Wed/wed1.jpeg', name: 'فستان زفاف', price: '15000 دج'),
  CardList(
      id: 3,
      pic: 'Image/Night/night1.jpeg',
      name: 'ثوب أبيض',
      price: '5000 دج'),
  CardList(
      id: 4,
      pic: 'Image/Tradition/trad3.jpeg',
      name: 'ثياب تقليدي',
      price: '9500 دج'),
  CardList(
      id: 5, pic: 'Image/Wed/wed2.jpeg', name: 'فستان زفاف', price: '13000 دج'),
  CardList(
      id: 6, pic: 'Image/Wed/wed3.jpeg', name: 'فستان زفاف', price: '18000 دج'),
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
      id: 9,
      pic: 'Image/Tradition/trad4.jpeg',
      name: 'فستان تقليدي',
      price: '6800 دج'),
  CardList(
      id: 10,
      pic: 'Image/Wed/wed4.jpeg',
      name: 'فستان زفاف',
      price: '22000 دج'),
  CardList(
      id: 11,
      pic: 'Image/Night/night4.jpeg',
      name: 'ثوب طويل أبيض',
      price: '11000 دج'),
];
