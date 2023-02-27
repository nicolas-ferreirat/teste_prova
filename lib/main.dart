import 'dart:async';

import 'package:flutter/material.dart';

import 'Screens_Tuto.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 3),(){
      Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context)=> Tutorial1())
      );
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2C2C2D),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/logo.png'),
          ],
        ),
      ),
    );
  }
}
