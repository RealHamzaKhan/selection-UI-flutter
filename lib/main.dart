import 'package:flutter/material.dart';
import 'package:lottery_app/constants.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30,),
             const Text('Choose your profession',
              style: textStyling,
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Mycontainer('images/barbers.jpeg', 'Barber'),
                  SizedBox(width: 10,),
                  Mycontainer('images/brows.jpeg', 'Brows'),

                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Mycontainer('images/hairstylist.jpeg', 'HairStylist'),
                  SizedBox(width: 10,),
                  Mycontainer('images/pedicurist.jpeg', 'Pedicurist'),

                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Mycontainer('images/Hair beauty.jpeg', 'Beauty Products'),


                ],
              ),
              SizedBox(height: 150,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  myButton(),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}

