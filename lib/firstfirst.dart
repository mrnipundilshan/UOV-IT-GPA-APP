import 'package:flutter/material.dart';
import 'package:newgpa/checkgpa.dart';
import 'package:newgpa/firstsecond.dart';
import 'package:newgpa/provider.dart';
import 'subject.dart';

class firstfirst extends StatefulWidget {
  const firstfirst({Key? key}) : super(key: key);

  @override
  State<firstfirst> createState() => _firstfirstState();
}

class _firstfirstState extends State<firstfirst> {
  late SubjectState oit;
  late SubjectState omaths;
  late SubjectState opro;
  late SubjectState oweb;
  late SubjectState ostat;

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
            "1ST YEAR 1ST SEMESTER",
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
                subname: "Fundamentals of Information Technology",
                credit: 3,
                dropdownService: oitDropdownService,
                onSubjectStateCreated: (subjectState) {
                  this.oit = subjectState;
                },
              ),
              Subject(
                subname: "Foundation of Mathematics",
                credit: 2,
                dropdownService: omathsDropdownService,
                onSubjectStateCreated: (subjectState) {
                  this.omaths = subjectState;
                },
              ),
              Subject(
                subname: "Fundamentals of Programming",
                credit: 4,
                dropdownService: oproDropdownService,
                onSubjectStateCreated: (subjectState) {
                  this.opro = subjectState;
                },
              ),
              Subject(
                subname: "Fundamentals of Web Programming",
                credit: 4,
                dropdownService: owebDropdownService,
                onSubjectStateCreated: (subjectState) {
                  this.oweb = subjectState;
                },
              ),
              Subject(
                subname: "Essentials of Statistics",
                credit: 2,
                dropdownService: ostatDropdownService,
                onSubjectStateCreated: (subjectState) {
                  this.ostat = subjectState;
                },
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
              checkresult(),
              ElevatedButton(
                onPressed: () {
                  if (oitDropdownService.grademarkscheck == 1 &&
                      omathsDropdownService.grademarkscheck == 1 &&
                      oproDropdownService.grademarkscheck == 1 &&
                      owebDropdownService.grademarkscheck == 1 &&
                      ostatDropdownService.grademarkscheck == 1) {
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
                  } else {
                    showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        backgroundColor: Color.fromARGB(255, 7, 70, 21),
                        title: const Text(
                          "Alert",
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 30.0),
                        ),
                        content: const Text(
                          "Fill all subjects results",
                          textAlign: TextAlign.center,
                        ),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(ctx).pop();
                            },
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 94, 167, 88),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16)),
                              ),
                              child: const Text(
                                "OK",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                },
                child: Text('Next Sem'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
