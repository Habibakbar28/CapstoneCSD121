import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailOrganicPage extends StatelessWidget {
  static const routeName = '/organic_page';

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
                        image: AssetImage('assets/images/organik.jpg'),
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
                      'Organik',
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Sampah organik adalah sampah yang berasal dari sisa mahkluk hidup yang mudah terurai secara alami tanpa proses campur tangan manusia untuk dapat terurai. '
                          'Sampah organik bisa dikatakan sebagai sampah ramah lingkungan bahkan sampah bisa diolah kembali menjadi suatu yang bermanfaat bila dikelola dengan tepat.',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.green,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 0.5,
                          wordSpacing: 1.5),
                    ),
                    SizedBox(height: 15,),
                    Text('Manfaat sampah organik',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),),
                    SizedBox(height: 10,),
                    Text(
                      'Sampah organik seperti buah – buah busuk dan sayuran dapat dibuat menjadi suatu berguna antara lain kompos. Pengolahan sampah organik untuk kompos tidaklah terlalu sulit.',
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