import 'package:flutter/material.dart';

class EducationalDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: const Text('EDUCATIONAL DETAILS'),
          actions: [
            IconButton(onPressed: () {Navigator.pushNamed(context, 'degreelist');}, icon: const Icon(Icons.photo))
          ],
          backgroundColor: Colors.black54,
        ),
        body: EducationalDetails(),
    );
  }
}

class EducationalDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 15),
      child: Column(
        children: [
          const Text("-- DEGREE PROGRAMS --", style: TextStyle(fontFamily: "Arvo", fontWeight: FontWeight.bold, fontSize: 20),),
          const SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black54, // Background color of the box
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300, // Shadow color
                    offset: const Offset(0, 2), // Shadow offset
                    blurRadius: 4, // Shadow blur radius
                  ),
                ],
              ),
              child: DataTable(
                columns: const [
                   DataColumn(label: Text('Degree', style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "Arvo", fontSize: 15),)),
                   DataColumn(label: Text('College/University', style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "Arvo", fontSize: 15),)),
                   DataColumn(label: Text('Campus', style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "Arvo", fontSize: 15),)),
                   DataColumn(label: Text('Session', style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "Arvo", fontSize: 15),)),
                   DataColumn(label: Text('Obtained/Total Marks', style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "Arvo", fontSize: 15),)),
                   DataColumn(label: Text('CGPA', style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "Arvo", fontSize: 15),)),
                ],
                rows: const [
                  DataRow(cells: [
                    DataCell(Text('Fsc Pre.Engineering', style: TextStyle(fontSize: 15,fontFamily: "Arvo"),)),
                    DataCell(Text('Punjab Group Of Colleges', style: TextStyle(fontSize: 15,fontFamily: "Arvo"),)),
                    DataCell(Text('Okara Campus', style: TextStyle(fontSize: 15,fontFamily: "Arvo"),)),
                    DataCell(Text('2016-2018', style: TextStyle(fontSize: 15,fontFamily: "Arvo"),)),
                    DataCell(Text('735/1100', style: TextStyle(fontSize: 15,fontFamily: "Arvo"),)),
                    DataCell(Text('')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Bs. Software Engineering', style: TextStyle(fontSize: 15,fontFamily: "Arvo"),)),
                    DataCell(Text('University of Okara', style: TextStyle(fontSize: 15,fontFamily: "Arvo"),)),
                    DataCell(Text('Main Campus', style: TextStyle(fontSize: 15,fontFamily: "Arvo"),)),
                    DataCell(Text('2019-2023', style: TextStyle(fontSize: 15,fontFamily: "Arvo"),)),
                    DataCell(Text('')),
                    DataCell(Text('3.4/4', style: TextStyle(fontSize: 15,fontFamily: "Arvo"),)),
                  ]),
                  // Add more DataRow widgets for additional educational details
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text("-- CERTIFICATES --",style: TextStyle(fontFamily: "Arvo", fontWeight: FontWeight.bold, fontSize: 20),),
          const SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black54, // Background color of the box
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300, // Shadow color
                    offset: const Offset(0, 2), // Shadow offset
                    blurRadius: 4, // Shadow blur radius
                  ),
                ],
              ),
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('Course', style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "Arvo", fontSize: 15),)),
                  DataColumn(label: Text('Institute', style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "Arvo", fontSize: 15),)),
                  DataColumn(label: Text('Address', style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "Arvo", fontSize: 15),)),
                  DataColumn(label: Text('Passing Year', style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "Arvo", fontSize: 15),)),

                ],
                rows: const [
                  DataRow(cells: [
                    DataCell(Text('Flutter Developer', style: TextStyle(fontSize: 15,fontFamily: "Arvo"),)),
                    DataCell(Text('PNY Training Institute', style: TextStyle(fontSize: 15,fontFamily: "Arvo"),)),
                    DataCell(Text('Afra Karim, LHR', style: TextStyle(fontSize: 15,fontFamily: "Arvo"),)),
                    DataCell(Text('2023', style: TextStyle(fontSize: 15,fontFamily: "Arvo"),)),
                  ]),

                  DataRow(cells: [
                    DataCell(Text('Freeancing', style: TextStyle(fontSize: 15,fontFamily: "Arvo"),)),
                    DataCell(Text('DIGI Skill', style: TextStyle(fontSize: 15,fontFamily: "Arvo"),)),
                    DataCell(Text('Online Web', style: TextStyle(fontSize: 15,fontFamily: "Arvo"),)),
                    DataCell(Text('2018', style: TextStyle(fontSize: 15,fontFamily: "Arvo"),)),
                  ]),

                  DataRow(cells: [
                    DataCell(Text('MS Office', style: TextStyle(fontSize: 15,fontFamily: "Arvo"),)),
                    DataCell(Text('DIGI Skill', style: TextStyle(fontSize: 15,fontFamily: "Arvo"),)),
                    DataCell(Text('Online Web', style: TextStyle(fontSize: 15,fontFamily: "Arvo"),)),
                    DataCell(Text('2018', style: TextStyle(fontSize: 15,fontFamily: "Arvo"),)),
                  ]),
                  // Add more DataRow widgets for additional educational details
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text("-- OTHER ACTIVITIES --",style: TextStyle(fontFamily: "Arvo", fontWeight: FontWeight.bold, fontSize: 20),),
          const SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black54, // Background color of the box
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300, // Shadow color
                    offset: const Offset(0, 2), // Shadow offset
                    blurRadius: 4, // Shadow blur radius
                  ),
                ],
              ),
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('Activity Name', style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "Arvo", fontSize: 15),)),
                  DataColumn(label: Text('Institute/Organization', style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "Arvo", fontSize: 15),)),
                  DataColumn(label: Text('Address', style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "Arvo", fontSize: 15),)),
                  DataColumn(label: Text('Type', style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "Arvo", fontSize: 15),)),

                ],
                rows: const [
                  DataRow(cells: [
                    DataCell(Text('Social Services', style: TextStyle(fontSize: 15,fontFamily: "Arvo"),)),
                    DataCell(Text('UO Media', style: TextStyle(fontSize: 15,fontFamily: "Arvo"),)),
                    DataCell(Text('University of Okara', style: TextStyle(fontSize: 15,fontFamily: "Arvo"),)),
                    DataCell(Text('Social Activity', style: TextStyle(fontSize: 15,fontFamily: "Arvo"),)),
                  ]),

                  DataRow(cells: [
                    DataCell(Text('Performance Test', style: TextStyle(fontSize: 15,fontFamily: "Arvo"),)),
                    DataCell(Text('Ambitious Testing Organization', style: TextStyle(fontSize: 15,fontFamily: "Arvo"),)),
                    DataCell(Text('Shadrah, LHR', style: TextStyle(fontSize: 15,fontFamily: "Arvo"),)),
                    DataCell(Text('Scholarship Test', style: TextStyle(fontSize: 15,fontFamily: "Arvo"),)),
                  ]),
                  // Add more DataRow widgets for additional educational details
                ],
              ),
            ),
          ),
          //If You want more Activity Program than add here
        ],
      ),
    );
  }
}
