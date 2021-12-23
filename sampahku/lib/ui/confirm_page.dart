import 'package:flutter/material.dart';
import 'package:sampahku/ui/home_page.dart';

class ConfirmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
                child: Image.asset('assets/images/check.png',
                  fit: BoxFit.contain,),
              ),
              SizedBox(height: 50,),
              Text("Tim kami segera mengangkut sampah anda",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                ),),
              SizedBox(height: 15,),
              Text('Terimakasih anda telah membantu',
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(height: 5,),
              Text('membersihkan bumi',
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(height: 13,),
              ActionChip(
                  label: Text("Kembali ke halaman utama"),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
                  } )
            ],
          ),
        ),
      ),
    );
  }

}