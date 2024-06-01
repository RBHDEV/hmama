import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hmama/daColors.dart';

class daSettings extends StatefulWidget {
  const daSettings({super.key});

  @override
  State<daSettings> createState() => _daSettingsState();
}

class _daSettingsState extends State<daSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dawhite,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                alignment: Alignment.center,
                height: 200,
                child: Image.asset('Image/user.png')),
            SizedBox(
              height: 75,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                shape: LinearBorder(),
                fixedSize: Size(250, 50),
                textStyle: ArabicTextStyle(
                    arabicFont: ArabicFont.avenirArabic,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => editacc()));
              },
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              label: Text(
                'تعديل الحساب',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                shape: LinearBorder(),
                fixedSize: Size(250, 50),
                textStyle: ArabicTextStyle(
                    arabicFont: ArabicFont.avenirArabic,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => contract()));
              },
              icon: Icon(
                Icons.handshake,
                size: 30,
              ),
              label: Text(
                'تعاقد معنا',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                shape: LinearBorder(),
                fixedSize: Size(250, 50),
                textStyle: ArabicTextStyle(
                    arabicFont: ArabicFont.avenirArabic,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => specialorder()));
              },
              icon: Icon(
                Icons.add_shopping_cart,
                size: 30,
              ),
              label: Text(
                'طلبات الخاصة',
              ),
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(250, 60),
                  textStyle: ArabicTextStyle(
                      arabicFont: ArabicFont.avenirArabic,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                  backgroundColor: Colors.red.shade400,
                  foregroundColor: daBright),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/LoginPage');
              },
              icon: Icon(
                Icons.logout,
                size: 30,
              ),
              label: Text(
                'تسجيل خروج',
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class editacc extends StatefulWidget {
  const editacc({super.key});

  @override
  State<editacc> createState() => _editaccState();
}

class _editaccState extends State<editacc> {
  void _showCustomSnackbar(BuildContext context) {
    final snackbar = SnackBar(
      content: Text(
        "لقد تم تعديل حسابك ",
        style: ArabicTextStyle(arabicFont: ArabicFont.avenirArabic),
      ),
      backgroundColor: daSecond,
      duration: Duration(seconds: 3), // Snackbar duration of 3 seconds
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  TextEditingController name =
      TextEditingController(text: ' ليلى سمير الراشدي');
  TextEditingController bith = TextEditingController(text: '1997/05/15');
  TextEditingController email =
      TextEditingController(text: 'layla97.rashdi@example.com');
  TextEditingController num = TextEditingController(text: '+213663589463');
  TextEditingController pass = TextEditingController(text: 'L@yla1997!');
  bool _isHidden = true;
  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dawhite,
      appBar: AppBar(
        title: Text('تعديل الحساب'),
        backgroundColor: daPrimary,
        foregroundColor: daBright,
        titleTextStyle: ArabicTextStyle(
            arabicFont: ArabicFont.avenirArabic,
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: name,
              decoration: InputDecoration(
                hintText: 'أدخل الإسم و اللقب',
                labelText: 'الإسم الكامل',
                hintStyle: ArabicTextStyle(
                  arabicFont: ArabicFont.avenirArabic,
                ),
                fillColor: dawhite,
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 1)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(width: 2)),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: bith,
              decoration: InputDecoration(
                hintText: 'أدخل يوم ميلادك ي/ش/ع',
                labelText: 'تاريخ الإزدياد',
                hintStyle: ArabicTextStyle(
                  arabicFont: ArabicFont.avenirArabic,
                ),
                fillColor: dawhite,
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 1)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(width: 2)),
              ),
              keyboardType: TextInputType.datetime,
            ),
            SizedBox(height: 10),
            TextField(
              controller: email,
              decoration: InputDecoration(
                hintText: 'أدخل عنوان بريدك الإلكتروني',
                labelText: 'البريد الإلكتروني',
                hintStyle: ArabicTextStyle(
                  arabicFont: ArabicFont.avenirArabic,
                ),
                fillColor: dawhite,
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 1)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(width: 2)),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 10),
            TextField(
              controller: num,
              decoration: InputDecoration(
                hintText: 'أدخل رقم هاتفك النقال',
                labelText: 'رقم الهاتف',
                hintStyle: ArabicTextStyle(
                  arabicFont: ArabicFont.avenirArabic,
                ),
                fillColor: dawhite,
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 1)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(width: 2)),
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 10),
            TextField(
              controller: pass,
              decoration: InputDecoration(
                hintText: 'أدخل كلمة المرور الخاصة بك',
                labelText: 'كلمة المرور',
                hintStyle: ArabicTextStyle(
                  arabicFont: ArabicFont.avenirArabic,
                ),
                fillColor: dawhite,
                filled: true,
                suffixIcon: IconButton(
                  icon: _isHidden
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility),
                  onPressed: _toggleVisibility,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 1)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      width: 2,
                    )),
              ),
              obscureText: _isHidden,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: daSecond,
                foregroundColor: dawhite,
                fixedSize: Size(100, 50),
                textStyle: ArabicTextStyle(
                    arabicFont: ArabicFont.avenirArabic,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              onPressed: () async {
                _showCustomSnackbar(context);
                Navigator.pop(context);
              },
              child: Text('تعديل'),
            ),
          ],
        ),
      ),
    );
  }
}

class contract extends StatefulWidget {
  const contract({super.key});

  @override
  State<contract> createState() => _contractState();
}

class _contractState extends State<contract> {
  void _showCustomSnackbar(BuildContext context) {
    final snackbar = SnackBar(
      content: Text(
        "نشكركم على تعاقدك معنا، سوف نتواصل معكم في أقرب وقت",
        style: ArabicTextStyle(arabicFont: ArabicFont.avenirArabic),
      ),
      backgroundColor: daSecond,
      duration: Duration(seconds: 3), // Snackbar duration of 3 seconds
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dawhite,
      appBar: AppBar(
        title: Text('تعاقد معنا'),
        backgroundColor: daPrimary,
        foregroundColor: daBright,
        titleTextStyle: ArabicTextStyle(
            arabicFont: ArabicFont.avenirArabic,
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                'الحرفيات',
                style: ArabicTextStyle(
                    arabicFont: ArabicFont.cairo,
                    fontSize: 29,
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
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'أدخل مجال التخصص الخاص بك',
                  labelText: 'المجال',
                  hintStyle: ArabicTextStyle(
                    arabicFont: ArabicFont.avenirArabic,
                  ),
                  fillColor: dawhite,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(width: 2)),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'أدخل نوع المنتوج الخاص بك',
                        labelText: 'نوع المنتوج',
                        hintStyle: ArabicTextStyle(
                          arabicFont: ArabicFont.avenirArabic,
                        ),
                        fillColor: dawhite,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(width: 2)),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'أدخل الكمية ',
                        labelText: 'الكمية',
                        hintStyle: ArabicTextStyle(
                          arabicFont: ArabicFont.avenirArabic,
                        ),
                        fillColor: dawhite,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(width: 2)),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  maxLines: null,
                  expands: true,
                  decoration: InputDecoration(
                    hintText: 'أكتب تفاصيل أكثر حول عملك و تعاقدك معنا',
                    labelText: 'التفاصيل',
                    hintStyle: ArabicTextStyle(
                      arabicFont: ArabicFont.avenirArabic,
                    ),
                    fillColor: dawhite,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(width: 2)),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: daThird,
                foregroundColor: dawhite,
                fixedSize: Size(160, 50),
                textStyle: ArabicTextStyle(
                    arabicFont: ArabicFont.avenirArabic,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              onPressed: () async {
                _showCustomSnackbar(context);
                Navigator.pop(context);
              },
              child: Text('إرسال الطلب'),
            ),
          ],
        ),
      ),
    );
  }
}

class specialorder extends StatefulWidget {
  const specialorder({super.key});

  @override
  State<specialorder> createState() => _specialorderState();
}

class _specialorderState extends State<specialorder> {
  void _showSnackBar(Color color, BuildContext context, String message) {
    final snackBar = SnackBar(
      backgroundColor: color,
      content: Text(
        message,
        style: ArabicTextStyle(arabicFont: ArabicFont.avenirArabic),
      ),
      duration: Duration(seconds: 3), // Personnalisez la durée si nécessaire
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  TextEditingController _messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dawhite,
      appBar: AppBar(
        title: Text('الطلبيات الخاصة'),
        backgroundColor: daPrimary,
        foregroundColor: daBright,
        titleTextStyle: ArabicTextStyle(
            arabicFont: ArabicFont.avenirArabic,
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: TextField(
                controller: _messageController,
                maxLines: null,
                textDirection: TextDirection.rtl,
                decoration: InputDecoration(
                  hintText: 'أكتب تفاصيل طلبك الخاص هنا...',
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: daThird,
                foregroundColor: dawhite,
                fixedSize: Size(160, 50),
                textStyle: ArabicTextStyle(
                    arabicFont: ArabicFont.avenirArabic,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              onPressed: () {
                if (_messageController.text.isEmpty) {
                  _showSnackBar(Colors.grey.shade700, context,
                      'من فضلك إملئ الخانة بطلبك الخاص');
                } else {
                  _showSnackBar(daSecond, context,
                      'لقد تم إرسال طلبك الخاص! ، سنتوصل معك في أقرب وقت');
                  Navigator.pop(context);
                }
              },
              child: Text('إرسال الطلب'),
            ),
          ],
        ),
      ),
    );
  }
}
