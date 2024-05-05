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
