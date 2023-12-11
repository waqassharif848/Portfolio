import 'package:flutter/material.dart';

import 'Portfolio.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Title(color: Colors.white, child: const Text("WELLCOME TO PORTFOLIO", style: TextStyle(fontWeight: FontWeight.w800,fontFamily: "Arvo"),)),
        actions: [
          IconButton(onPressed: ()=> {}, icon: const Icon(Icons.photo))
        ],
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),

        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox( height: 30,),
              const Text("WAQAS SHARIF", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,fontFamily: "Arvo"),),
              const Text("Scroll And ClicK on Portfolio Button for visit My Portfolio.", style: TextStyle(fontSize:13 ,fontWeight: FontWeight.w600,fontFamily: "Arvo"),),
              const SizedBox( height: 30,),
              Container(
                alignment: Alignment.bottomCenter,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12, // Shadow color
                      offset: Offset(5, 5), // Offset of the shadow
                      blurRadius: 5, // Spread of the shadow
                    ),
                  ],

                ),
                padding: const EdgeInsets.all(20),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     SizedBox( height: 20,),
                     Text("Bio:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, fontFamily: "Arvo"),),
                     Text("Aspiring Flutter Developer with a passion for creating elegant and efficient mobile applications. Currently pursuing an internship opportunity to further enhance my skills and contribute to innovative projects. Proficient in a range of technologies including Flutter Widgets, Dart, Firebase, CSS, HTML, and MySQL. Strong analytical abilities and experience with the Software Development Life Cycle (SDLC) make me a valuable asset to any team.", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18,fontFamily: "Arvo",),),
                  ],
                ),
              ),
              const SizedBox(height: 30,),
              Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12, // Shadow color
                      offset: Offset(5, 5), // Offset of the shadow
                      blurRadius: 5, // Spread of the shadow
                    ),
                  ],

                ),
                padding: const EdgeInsets.all(20),

                child: const Column(
                  children: [
                    SizedBox( height: 20,),
                    Text("Education:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,fontFamily: "Arvo"),),
                    Text("I am graduated in Bs.Software Engineering from University of Okara with 3.4/4 CGPA, Since September 2023. ", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18,fontFamily: "Arvo"),),
                  ],
                ),
              ),
              const SizedBox(height: 30,),
              Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12, // Shadow color
                      offset: Offset(5, 5), // Offset of the shadow
                      blurRadius: 5, // Spread of the shadow
                    ),
                  ],

                ),
                padding: const EdgeInsets.all(20),

                child: const Column(

                  children: [
                    SizedBox( height: 20,),
                    Text("Certified By:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, fontFamily: "Arvo"),),
                    Text("I am certified in Flutter Development from PNY Training Institute, Arfa Software Solution LHR, Since from 17 july 2023 to 17 Oct 2023. ", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18,fontFamily: "Arvo"),),
                  ],
                ),
              ),
              const SizedBox(height: 30,),
              ElevatedButton(onPressed: ()=> {Navigator.push(context, MaterialPageRoute(builder: (context) =>const PortFolio()))},
                  child: const Text("PORTFOLIO", style: TextStyle(color: Colors.black ,fontSize: 20,fontFamily: "Arvo", fontWeight: FontWeight.w600),))
            ],
          ),
        ),
      ),

    );
  }
}
