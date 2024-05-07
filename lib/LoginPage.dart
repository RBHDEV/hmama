import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/material.dart';
import 'package:hmama/daColors.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isHidden = true;

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: daPrimary,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Container(
                width: 200,
                height: 200,
                child: Image.asset(
                  'Image/AppIco.png',
                ),
              ),
              Text(
                'مرحبا! سجل دخولك أو إنشئ حساب جديد',
                style: ArabicTextStyle(
                    arabicFont: ArabicFont.avenirArabic,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 80,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'أكتب إيميلك الإلكتروني',
                    labelText: 'الإيميل',
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
                        borderSide: BorderSide(width: 2))),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                    hintText: 'أكتب كلمة السر الخاصة بك',
                    labelText: 'كلمة السر',
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
                        borderSide: BorderSide(width: 2))),
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
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
                child: Text('دخول'),
              ),
              SizedBox(height: 100),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple.shade400,
                  foregroundColor: dawhite,
                  fixedSize: Size(180, 70),
                  textStyle: ArabicTextStyle(
                      arabicFont: ArabicFont.avenirArabic,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
                },
                child: Text('إنشاء حساب جديد'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  void showCustomSnackbarSignUp(BuildContext context) {
    final snackbar = SnackBar(
      content: Text(
        "لقد تم إنشاء حسابك بنجاح",
        style: ArabicTextStyle(arabicFont: ArabicFont.avenirArabic),
      ),
      backgroundColor: daSecond,
      duration: Duration(seconds: 3), // Snackbar duration of 3 seconds
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  bool _isHidden = true;

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: daPrimary,
      appBar: AppBar(
        title: Text('إنشاء حساب جديد'),
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
                await Future.delayed(Duration(seconds: 1), () {
                  showCustomSnackbarSignUp(context);
                });
                Navigator.pushReplacementNamed(context, '/');
              },
              child: Text('تسحيل'),
            ),
          ],
        ),
      ),
    );
  }
}
