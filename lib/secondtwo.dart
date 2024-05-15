import 'package:flutter/material.dart';
import 'package:newgpa/checkgpa.dart';
import 'package:newgpa/provider.dart';
import 'package:newgpa/secondone.dart';
import 'subject.dart';

class firstsecond extends StatefulWidget {
  const firstsecond({Key? key}) : super(key: key);

  @override
  State<firstsecond> createState() => _firstsecondState();
}

class _firstsecondState extends State<firstsecond> {
  // Create separate instances of Dropdownservice

  String finalre = "--";
  int decimalPlaces = 4;

  late SubjectState smis;
  late SubjectState sda;
  late SubjectState sws;
  late SubjectState sos;
  late SubjectState ssp;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromARGB(255, 94, 167, 88),
          centerTitle: true,
          title: const Text(
            "2ND YEAR 2ND SEMESTER",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(13),
          width: 420,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 38, 46, 37),
              image: DecorationImage(
                  image: AssetImage('images/bg1.png'), opacity: 0.08)),
          alignment: Alignment.topCenter,
          child: ListView(
            //scrollDirection: Axis.vertical,
            children: [
              Subject(
                subname: "Management Information Systems",
                credit: 2,
                onSubjectStateCreated: (subjectState) {
                  this.smis = subjectState;
                },
                dropdownService: smisDropdownService,
              ),
              Subject(
                subname: "Design and Analysis of Algorithms",
                credit: 3,
                onSubjectStateCreated: (subjectState) {
                  this.sda = subjectState;
                },
                dropdownService: sdaDropdownService,
              ),
              Subject(
                subname: "Web Services and Server Technologies",
                credit: 4,
                onSubjectStateCreated: (subjectState) {
                  this.sws = subjectState;
                },
                dropdownService: swsDropdownService,
              ),
              Subject(
                subname: "Operating Systems",
                credit: 4,
                onSubjectStateCreated: (subjectState) {
                  this.sos = subjectState;
                },
                dropdownService: sosDropdownService,
              ),
              Subject(
                subname: "Social and Professional Issues in IT",
                credit: 2,
                onSubjectStateCreated: (subjectState) {
                  this.ssp = subjectState;
                },
                dropdownService: sspDropdownService,
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Color.fromARGB(255, 75, 150, 68),
          height: 55,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Color.fromARGB(255, 0, 70, 0), // Background color
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          secondone(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return child;
                      },
                    ),
                  );
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_back_outlined),
                  ],
                ),
              ),
              checkresult(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Color.fromARGB(255, 0, 70, 0), // Background color
                ),
                onPressed: () {
                  if (smisDropdownService.grademarkscheck == 1 &&
                      sdaDropdownService.grademarkscheck == 1 &&
                      swsDropdownService.grademarkscheck == 1 &&
                      sosDropdownService.grademarkscheck == 1 &&
                      sspDropdownService.grademarkscheck == 1) {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            firstsecond(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return child;
                        },
                      ),
                    );
                  }
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_forward_outlined),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
