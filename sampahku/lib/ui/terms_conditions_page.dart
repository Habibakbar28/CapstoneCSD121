import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TermsConditionsPage extends StatelessWidget {
  static const routeName = '/term_condition_page';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: width,
          child: Stack(
            children: <Widget>[
              Container(
                height: height * 0.55,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/syarat.jpg'),
                        fit: BoxFit.cover)),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.green.withOpacity(0.1),
                        Colors.green.withOpacity(0.1),
                      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                ),
              ),
              Container(
                width: width,
                height: 450,
                margin: EdgeInsets.only(top: height * 0.5),
                padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Syarat Layanan',
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    SizedBox(height: 15,),
                    Text('Sampah Organik',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),),
                    SizedBox(height: 5,),
                    Text(
                      'Sampah yang bisa diambil dari organik dengan ketentuan sebagai berikut :',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.green,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 0.5,
                          wordSpacing: 1.5),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      '1. Dari buah - buahan busuk',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.green,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 0.5,
                          wordSpacing: 1.5),
                    ),
                    Text(
                      '2. Sampah sayuran rumah tangga',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.green,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 0.5,
                          wordSpacing: 1.5),
                    ),
                    Text(
                      '3. Sampah daun - daun kering',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.green,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 0.5,
                          wordSpacing: 1.5),
                    ),
                    Text(
                      '4. Kotoran hewan peliharaan.',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.green,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 0.5,
                          wordSpacing: 1.5),
                    ),
                    SizedBox(height: 10,),
                    Text('Sampah Anorganik',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),),
                    SizedBox(height: 5,),
                    Text(
                      'Sampah yang bisa diambil dari anorganik dengan ketentuan sebagai berikut :',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.green,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 0.5,
                          wordSpacing: 1.5),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      '1. Sampah tidak basah',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.green,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 0.5,
                          wordSpacing: 1.5),
                    ),
                    Text(
                      '2. Sampah terbuat dari plastik ',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.green,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 0.5,
                          wordSpacing: 1.5),
                    ),
                    Text(
                      '3. Sampah elektronik ',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.green,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 0.5,
                          wordSpacing: 1.5),
                    ),
                    Text(
                      '4. Sampah kaca dan besi ',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.green,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 0.5,
                          wordSpacing: 1.5),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 30,
                top: height * 0.05,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 25,
                    color: Colors.greenAccent,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}