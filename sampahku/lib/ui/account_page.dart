import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account"),
        centerTitle: true,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.green, Colors.greenAccent],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight
              )
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
                child: Image.asset('assets/images/sampahku.png', fit: BoxFit.contain,),
              ),
              SizedBox(height: 20,),
              Text('Selamat Datang',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(height: 15,),
              Text("Name",
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w500
                ),),
              SizedBox(height: 10,),
              Text("Email",
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w500
                ),),
              SizedBox(height: 13,),
              ActionChip(
                  label: Text("Logout"),
                  onPressed: () {} )
            ],
          ),
        ),
      ),
    );
  }
}