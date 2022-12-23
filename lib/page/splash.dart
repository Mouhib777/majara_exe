import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ieee/page/welcome.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
   @override
  void initState() {
    Timer(
        Duration(
          seconds: 8,
        ), () {
           Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => welcome()));
      
        
          
      
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
     
    return Container(
      
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/splash.gif'),
        fit:BoxFit.cover )
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          actions: [
           
          ],
        ),
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             // SizedBox(width: 120,),
              Image.asset('assets/tsyp-horizontal.png',
             //height: 320,
             //width: 320,
              ) , 
              
              Image.asset('assets/ieee_isima.png', height: 190,), 
              SizedBox(height: 30,),
              Text('  Developed By\nMouhib Sahbani',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold, 
                fontSize: 18.5
                ),)
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [ 
              //    Image.asset('assets/splash1.png')
              //   ],
              // )
            ],
          ),
        ),

        

      ),
    );
  }
}