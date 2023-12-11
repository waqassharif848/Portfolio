import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wtf_sliding_sheet/wtf_sliding_sheet.dart';

class PortFolio extends StatefulWidget {
  const PortFolio({super.key});

  @override
  State<PortFolio> createState() => _PortFolioState();
}

class _PortFolioState extends State<PortFolio> {
  // function for call enter achievements
  myAchieve(IconData icon, dynamic text) {
    return Row(
      children: [
        Icon(icon, size: 30,),
        const SizedBox(width: 15),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'projects');
            },
            child: Text(text, style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Arvo"),
            ))
      ],
    );
  }

  mySpec(icon, text, onPressed) {
    return ElevatedButton(
      onPressed: onPressed, // Pass the onPressed function to the button
      style: ElevatedButton.styleFrom(
        elevation: 4,
        padding: const EdgeInsets.all(0), // Adjust padding as needed
        backgroundColor: Colors.black12, // Customize the button's background color
      ),
      child: Container(
        margin: const EdgeInsets.all(10),
        height: 150,
        width: 150,
        child: Card(
          margin: const EdgeInsets.all(0),
          color: Colors.black12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, color: Colors.white, size: 40),
                const SizedBox(height: 10),
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontFamily: "Arvo",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        excludeHeaderSemantics: true,
        title:const Text('WELLCOME TO PORTFOLIO', style: TextStyle(color: Colors.white10,fontSize:20, fontWeight: FontWeight.w500, fontFamily: "Arvo"),),
        elevation: 0,
        backgroundColor: Colors.black54,
      ),
      body: SlidingSheet(
        elevation: 0,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          snap: true,
          snappings: [0.38, 0.7, 1.0],
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        body: Container(
          color: Colors.black54,
          child: Stack(
            children: [
              Container(
                color: Colors.black54,
                margin: const EdgeInsets.only(top: 0),
                child: ShaderMask(
                  shaderCallback: (rect) {
                    return const LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black54, Colors.transparent],
                    ).createShader(
                        Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset(
                    'Assets/mine.jpg',
                    height: 600,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.44),
                child: const Column(
                  children: [
                    Text('WAQAS SHARIF',
                        style: TextStyle(
                            fontFamily: "Arvo",
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Flutter Developer',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Arvo",
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

          builder: (context, state) {
            return Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              height: 500,
              child: SingleChildScrollView( // Wrap the column in a SingleChildScrollView
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text(
                        'ACHIEVEMENT',
                        style: TextStyle(
                          fontFamily: "Arvo",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.grey,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          myAchieve(Icons.file_copy_outlined, "PROJECTS"),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // specialized List according to Skill
                    const Center(
                      child: Text(
                        'SPECIALITY',
                        style: TextStyle(
                          fontFamily: "Arvo",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySpec(Icons.account_circle_sharp, 'Accounts', () {
                          Navigator.pushNamed(context, 'accounts');
                        }),
                        const SizedBox(
                          height: 10,
                        ),
                        mySpec(FontAwesomeIcons.person, 'Personal Info', () {
                          Navigator.pushNamed(context, 'personalinfo');
                        }),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySpec(FontAwesomeIcons.book, 'Education', () {
                          Navigator.pushNamed(context, 'education');
                        }),
                        const SizedBox(
                          height: 10,
                        ),
                        mySpec(FontAwesomeIcons.desktop, 'Skills', () {
                          Navigator.pushNamed(context, 'skill');
                        }),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySpec(FontAwesomeIcons.personCircleCheck, 'Experience', () {
                          Navigator.pushNamed(context, 'experience');
                        }),
                        const SizedBox(
                          height: 10,
                        ),
                        mySpec(FontAwesomeIcons.video, 'Intro Videos', () {
                          Navigator.pushNamed(context, 'introvideo');
                        }),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }

      ),
    );
  }
}
