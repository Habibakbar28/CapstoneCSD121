import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sampahku/ui/confirm_page.dart';

class BookingPage extends StatefulWidget {
  static const routeName = '/booking_page';

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {

  // editing controller
  final nameEditingController = new TextEditingController();
  final addressEditingController = new TextEditingController();
  final noHandPhoneEditingController = new TextEditingController();
  final trashEditingController = new TextEditingController();
  final weightEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // name field
    final nameField = TextFormField(
      autofocus: false,
      controller: nameEditingController,
      keyboardType: TextInputType.name,
      // validator: () {},
      onSaved: (value) {
        nameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Nama",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          )
      ),
    );

    // address field
    final addressField = TextFormField(
      autofocus: false,
      controller: addressEditingController,
      keyboardType: TextInputType.name,
      // validator: () {},
      onSaved: (value) {
        addressEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.add_location_rounded),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Alamat",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          )
      ),
    );

    // no hand phone field
    final noHandPhoneField = TextFormField(
      autofocus: false,
      controller: noHandPhoneEditingController,
      keyboardType: TextInputType.emailAddress,
      // validator: () {},
      onSaved: (value) {
        noHandPhoneEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.call),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Nomor Telepon",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          )
      ),
    );

    // trash field
    final trashField = TextFormField(
      autofocus: false,
      controller: trashEditingController,
      keyboardType: TextInputType.emailAddress,
      // validator: () {},
      onSaved: (value) {
        trashEditingController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.delete),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Organik / Anorganik",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          )
      ),
    );

    // signup button
    final takeButton = Material(
      elevation: 3,
      borderRadius: BorderRadius.circular(30),
      color: Colors.green,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => ConfirmPage()));
        },
        child: Text("Angkut", textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold
          ),),
      ),
    );



    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: width,
            child: Stack(
              children: <Widget>[
                Container(
                  height: height * 0.55,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/maps.jpg'),
                          fit: BoxFit.cover)),
                ),
                Container(
                  width: width,
                  height: 400,
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
                      nameField,
                      SizedBox(height: 15,),
                      addressField,
                      SizedBox(height: 15,),
                      noHandPhoneField,
                      SizedBox(height: 15,),
                      trashField,
                      SizedBox(height: 15,),
                      takeButton,
                      SizedBox(height: 5,),
                      Center(
                        child: Text('Pastikan data yang terisi benar',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),),
                      )
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
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}