import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nike_sneakers/pages/Home.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
            //logo
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset('lib/images/logo.png',height: 240,),
            ),
        
            SizedBox(height: 20,),
        
            Text("Just Do It",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
        
            SizedBox(height: 20,),
        
            Text("Brand new Sneakers and Custom kicks made with Prenium Quality ",style: TextStyle(fontSize: 20,color: Colors.grey[400]),textAlign: TextAlign.center,),

            SizedBox(height: 30,),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Home();
                },));
              },
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Center(
                  child: Text('Shop Now',style: TextStyle(color: Colors.white),),
                ),
              ),
            )
        
          ],
        ),
      ),
    );
  }
}