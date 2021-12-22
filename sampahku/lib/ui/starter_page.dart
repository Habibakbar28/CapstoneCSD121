import 'package:flutter/material.dart';
import 'package:sampahku/ui/login_page.dart';

class StarterPage extends StatelessWidget {
  static const routeName = '/starter_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/get_start.jpg'),
                fit: BoxFit.cover
            )
        ),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  colors: [
                    Colors.green.withOpacity(0.5),
                    Colors.green.withOpacity(0.4),
                    Colors.green.withOpacity(0.1),
                  ]
              )
          ),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text('Taking trash \nto safe our \nEarth ', style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Text("Membuang sampah kini \njadi lebih mudah", style: TextStyle(color: Colors.white, height: 1.4, fontSize: 18),),
                SizedBox(height: 100,),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                          colors: [
                            Colors.green,
                            Colors.greenAccent
                          ]
                      )
                  ),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Text("Start", style: TextStyle(color: Colors.white),),
                  ),
                ),
                SizedBox(height: 80,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}