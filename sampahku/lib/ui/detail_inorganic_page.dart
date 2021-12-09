import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailInorganicPage extends StatelessWidget {
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
                        image: AssetImage('assets/images/anorganik.jpg'),
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
                      'Anorganik',
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Sampah anorganik adalah sampah yang sudah tidak dipakai lagi dan sulit terurai. Sampah anorganik yang tertimbun di tanah dapat menyebabkan pencemaran tanah karena sampah anorganik tergolong zat yang sulit terurai dan sampah itu akan tertimbun dalam tanah dalam waktu lama, ini menyebabkan rusaknya lapisan tanah.',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.green,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 0.5,
                          wordSpacing: 1.5),
                    ),
                    SizedBox(height: 15,),
                    Text('Manfaat sampah anorganik',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),),
                    SizedBox(height: 10,),
                    Text(
                      'manfaat sampah anorganik yang bisa kita manfaatkan adalah dengan membuat kerajinan dari sampah atau limbah tersebut. Misalnya sampah plastik dapat dibuat tas, taplak meja makan, pernak pernik.',
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