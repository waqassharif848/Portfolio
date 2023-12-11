import 'package:flutter/material.dart';

import 'class/productclass.dart';

class ProjectScreens extends StatefulWidget {
  const ProjectScreens({super.key});

  @override
  State<ProjectScreens> createState() => _ProjectScreensState();
}

class _ProjectScreensState extends State<ProjectScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        excludeHeaderSemantics: true,
        elevation: 0,
        title: const Text('Projects'),
        backgroundColor: Colors.black54,
      ),
      body:ListView.builder(

          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(20),
          itemCount: projectList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: ElevatedButton(
                onPressed: () {
                  // Handle the button press for the specific project here
                },
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  surfaceTintColor: Colors.red,
                  shadowColor: Colors.black38,
                  padding: const EdgeInsets.all(30),
                  backgroundColor: Colors.black54, // Customize the button's background color
                ),
                child: Column(
                    children: [
                      Image(image: AssetImage(projectList[index].imagePath),), // Use AssetImage
                      const SizedBox(height: 10),
                      Text(projectList[index].name, style: const TextStyle(fontWeight: FontWeight.bold, fontFamily: "Arvo", fontSize: 25, color: Colors.black),),
                    ],
                  ),

              ),
            );
          },
        ),
    );
  }
}
