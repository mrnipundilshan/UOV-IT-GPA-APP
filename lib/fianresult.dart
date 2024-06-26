import 'package:flutter/material.dart';
import 'package:newgpa/firstfirst.dart';
import 'package:newgpa/provider.dart';

class finalresult extends StatefulWidget {
  const finalresult({Key? key}) : super(key: key);

  @override
  State<finalresult> createState() => _finalresultState();
}

class _finalresultState extends State<finalresult> {
  // Create separate instances of Dropdownservice

  double finaldoublegpa = (oneoneDropdownService.finalgpa +
          onetwoDropdownService.finalgpa +
          twooneDropdownService.finalgpa +
          twotwoDropdownService.finalgpa +
          thirdoneDropdownService.finalgpa +
          thirdtwoDropdownService.finalgpa) /
      (oneoneDropdownService.count +
          onetwoDropdownService.count +
          twooneDropdownService.count +
          twotwoDropdownService.count +
          thirdoneDropdownService.count +
          thirdtwoDropdownService.count);

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
            "Final GPA",
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
          child: ListView(children: [
            Container(
              height: 120.0,
              width: 380,
              decoration: const BoxDecoration(
                color: Color.fromARGB(64, 97, 149, 91),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              margin: const EdgeInsets.only(bottom: 10),
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  const Text(
                    "1st Year",
                    style: TextStyle(
                        fontSize: 19.2,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          const Text(
                            "1st semester",
                            style: const TextStyle(fontSize: 18.0),
                          ),
                          Text(
                            oneoneDropdownService.semfinaldouble,
                            style: const TextStyle(fontSize: 18.0),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text(
                            "2nd semester",
                            style: const TextStyle(fontSize: 18.0),
                          ),
                          Text(
                            onetwoDropdownService.semfinaldouble,
                            style: const TextStyle(fontSize: 18.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 120.0,
              width: 380,
              decoration: const BoxDecoration(
                color: Color.fromARGB(64, 97, 149, 91),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              margin: const EdgeInsets.only(bottom: 10),
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  const Text(
                    "2nd Year",
                    style: TextStyle(
                        fontSize: 19.2,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          const Text(
                            "1st semester",
                            style: const TextStyle(fontSize: 18.0),
                          ),
                          Text(
                            twooneDropdownService.semfinaldouble,
                            style: const TextStyle(fontSize: 18.0),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text(
                            "2nd semester",
                            style: const TextStyle(fontSize: 18.0),
                          ),
                          Text(
                            twotwoDropdownService.semfinaldouble,
                            style: const TextStyle(fontSize: 18.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 120.0,
              width: 380,
              decoration: const BoxDecoration(
                color: Color.fromARGB(64, 97, 149, 91),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              margin: const EdgeInsets.only(bottom: 10),
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  const Text(
                    "3rd Year",
                    style: TextStyle(
                        fontSize: 19.2,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          const Text(
                            "1st semester",
                            style: const TextStyle(fontSize: 18.0),
                          ),
                          Text(
                            thirdoneDropdownService.semfinaldouble,
                            style: const TextStyle(fontSize: 18.0),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text(
                            "2nd semester",
                            style: const TextStyle(fontSize: 18.0),
                          ),
                          Text(
                            thirdtwoDropdownService.semfinaldouble,
                            style: const TextStyle(fontSize: 18.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 120.0,
              width: 380,
              decoration: const BoxDecoration(
                color: Color.fromARGB(64, 97, 149, 91),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              margin: const EdgeInsets.only(bottom: 10),
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  const Text(
                    "Final GPA",
                    style: TextStyle(
                        fontSize: 29.2,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "${finaldoublegpa.toStringAsFixed(4)}",
                    style: const TextStyle(
                        fontSize: 29.2,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ]),
        ),
        bottomNavigationBar: BottomAppBar(
          padding: EdgeInsets.all(0),
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
                          firstfirst(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return child;
                      },
                    ),
                  );
                },
                child: const Text(
                  'Back',
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
