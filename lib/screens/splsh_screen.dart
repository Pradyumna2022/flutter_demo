import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shesty_app/screens/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  initState(){
    super.initState();
    Timer(Duration(seconds: 7) , fornextscreen);
  }
  
  void fornextscreen(){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> HomeScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network('https://img.freepik.com/free-photo/shirt-hanger-with-green-background_23-2150264162.jpg?w=740&t=st=1684930833~exp=1684931433~hmac=c7a6e2234bda072075b18812f9e6e6c416dda7bf25767ec8193cfd7954786f25',
              height: 200,),
            ),
            SizedBox(height: 20,),
            Text("W E 🔥 C 💧  M E " , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23,color: Colors.teal[500]),)
          ],
        ),
      ),
    );
  }
}
