import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/material.dart';
import 'package:hmama/Models/CardList.dart';
import 'package:hmama/daColors.dart';

class daRentDetails extends StatefulWidget {
  final int data;
  const daRentDetails({super.key, required this.data});

  @override
  State<daRentDetails> createState() => _daBuyDetailsState();
}

class _daBuyDetailsState extends State<daRentDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< Updated upstream
        foregroundColor: Colors.pink.shade400,
=======
        foregroundColor: Colors.pink[500],
>>>>>>> Stashed changes
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 2,
              child: ClipRRect(
                clipBehavior: Clip.antiAlias,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                child: Image.asset(
                  simpleRentList[widget.data].pic,
                  fit: BoxFit.fitWidth,
                  alignment: Alignment(0, -0.5),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 3,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0,
                      MediaQuery.of(context).viewInsets.bottom),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            simpleRentList[widget.data].name,
                            style: ArabicTextStyle(
                                arabicFont: ArabicFont.avenirArabic,
                                fontSize: 30),
                          ),
                          Text(
                            simpleRentList[widget.data].price,
                            style: ArabicTextStyle(
                                arabicFont: ArabicFont.avenirArabic,
                                fontSize: 30,
                                color: daSecond,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: daThird,
                                  foregroundColor: dawhite,
                                  textStyle: ArabicTextStyle(
                                      arabicFont: ArabicFont.avenirArabic,
                                      fontSize: 24),
                                  fixedSize: Size(120, 50)),
                              onPressed: () {},
                              child: Text('شراء'))),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'وصف المنتج:',
                        style: ArabicTextStyle(
                            arabicFont: ArabicFont.avenirArabic,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'استمتعي بالأناقة والراحة مع هذا الفستان الصيفي المميز، الذي يعتبر الخيار المثالي للأيام الدافئة. مصمم بنقوش زهرية رقيقة تضفي لمسة من الجمال والأنوثة، مع قصة متدفقة تنساب بنعومة على القوام. الفستان مصنوع من خامة خفيفة ومسامية، تضمن تهوية جيدة وراحة تدوم طوال اليوم. مزود بأكمام قصيرة وياقة مستديرة لتعزيز الشعور بالراحة والحرية في الحركة. تمتعي بارتدائه في نزهاتك الصباحية أو لقاءاتك العصرية مع الأصدقاء، وأضيفي إليه حذاء مسطح لمظهر كاجوال أنيق أو كعب عالٍ لإطلالة مسائية جذابة. سيكون هذا الفستان الخيار المفضل لديك في خزانة ملابسك لما يتمتع به من جمال في التصميم وراحة في الارتداء.',
                        style: ArabicTextStyle(
                            arabicFont: ArabicFont.avenirArabic, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
