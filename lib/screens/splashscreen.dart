import 'dart:async';
import 'package:bubble_loader/bubble_loader.dart';
import 'package:flutter/material.dart';
import 'Home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds:5), () =>
      Navigator.push(context, MaterialPageRoute(builder: (context) =>const Home()
      )));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blue.shade100,
          body: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("Assets/ws.jpg"),
                  radius: 90,
                ),
              ),

              SizedBox(height: 60,),
              Text('WELLCOME\n  \t\t\t\t\t TO\nPORTFOLIO\n', style: TextStyle(fontSize:30,fontFamily: "PixelifySans", fontWeight: FontWeight.bold, color: Colors.black54),),
              SizedBox(height: 30,),
                // I am using this loading pakage as a Blubbleloader
                Center(
                  child: BubbleLoader(
                          color1: Colors.redAccent,
                          color2: Colors.blue,
                          bubbleGap: 10,
                          bubbleScalingFactor: 1,
                          duration: Duration(milliseconds: 1500),
                        ),
                ),
            ],
          ),
        ) );
  }
}
