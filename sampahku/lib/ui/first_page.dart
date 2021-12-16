import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sampahku/ui/booking_page.dart';
import 'package:sampahku/ui/detail_inorganic_page.dart';
import 'package:sampahku/ui/detail_organic_page.dart';
import 'package:sampahku/ui/terms_conditions_page.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 30),
              child: Column(
                children: [
                  Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Sampahku',
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w700
                              ),),
                            Text('Buang sampah kini jadi mudah',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400
                              ),)
                          ],
                        ),
                      ]
                  ),
                  SizedBox(height: 30,),
                  Align(
                    alignment: Alignment.topLeft,
                    child:
                    Text('Buang sampah',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300
                      ),)
                    ,
                  ),
                  SizedBox(height: 15,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 210,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Colors.green.withOpacity(0.8),
                              Colors.greenAccent.withOpacity(0.9)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.centerRight
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                          topRight: Radius.circular(60),
                        ),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(5,10),
                              blurRadius: 10,
                              color: Colors.greenAccent.withOpacity(0.5)
                          )
                        ]
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Selamatkan bumi',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white
                            ),),
                          SizedBox(height: 15,),
                          Text('Buang sampah ',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white
                            ),),
                          SizedBox(height: 5,),
                          Text('Sesuai jenisnya',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white
                            ),),
                          SizedBox(height: 5,),
                          Text('Agar bumi tetap bersih',
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white
                            ),),
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                  ),
                                  child: IconButton(
                                      icon: Icon(
                                        Icons.double_arrow_sharp,
                                        color: Colors.white,
                                        size: 50,
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => BookingPage()),
                                        );
                                      }
                                  )
                              )
                            ],
                          )
                        ],
                      ),

                    ),
                  ),
                  SizedBox(height: 15,),
                  Align(
                      alignment: Alignment.topLeft,
                      child:
                      Text('Layanan Informasi',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300
                        ),)
                  ),
                  SizedBox(height: 15,),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailOrganicPage()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.only(top: 5, right: 10, left: 10),
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        gradient: LinearGradient(
                            colors: [
                              Colors.green,
                              Colors.greenAccent,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.centerRight
                        ),
                      ),
                      child: Container(
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 8,),
                                Text('Apa itu?',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white
                                  ),),
                                SizedBox(height: 8,),
                                Text('Sampah organik ?',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white
                                  ),)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailInorganicPage()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.only(top: 5, right: 10, left: 10),
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        gradient: LinearGradient(
                            colors: [
                              Colors.green,
                              Colors.greenAccent,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.centerRight
                        ),
                      ),
                      child: Container(
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 8,),
                                Text('Apa itu?',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white
                                  ),),
                                SizedBox(height: 8,),
                                Text('Sampah anorganik ?',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white
                                  ),)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TermsConditionsPage()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.only(top: 5, right: 10, left: 10),
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        gradient: LinearGradient(
                            colors: [
                              Colors.green,
                              Colors.greenAccent,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.centerRight
                        ),
                      ),
                      child: Container(
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 8,),
                                Text('Tata cara pembuangan sampah',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white
                                  ),),
                                SizedBox(height: 8,),
                                Text('Syarat & Ketentuan',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white
                                  ),)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}