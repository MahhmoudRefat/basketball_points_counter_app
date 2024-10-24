import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
var num1 = 0 ;
var num2 = 0 ;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Points Counter ",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xffFF9900),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "Team A",
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      "$num1",
                      style: TextStyle(fontSize: 150),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          num1++;
                        });

                      },
                      child: Text("add 1 Point "),
                      color: Color(0xffFF9900),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          num1+=2;
                        });
                       },
                      child: Text("add 2 Point "),
                      color: Color(0xffFF9900),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          num1+=3;
                        });
                       },
                      child: Text("add 3 Point "),
                      color: Color(0xffFF9900),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.black,
                  thickness: 1,
                  height: 10,
                  indent: 60,
                  endIndent: 60,
                ),
                Column(
                  children: [
                    Text(
                      "Team B",
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      "$num2",
                      style: TextStyle(fontSize: 150),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          num2++;
                        });

                      },
                      child: Text("add 1 Point "),
                      color: Color(0xffFF9900),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          num2+=2;
                        });
                      },
                      child: Text("add 2 Point "),
                      color: Color(0xffFF9900),
                    ),
                    MaterialButton(
                      onPressed: () {

                        setState(() {
                          num2+=3;
                        });
                      },
                      child: Text("add 3 Point "),
                      color: Color(0xffFF9900),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    num1 = 0 ;
                    num2 = 0;
                  });

                },
                child: Text("Reset"),
                color: Color(0xffFF9900),
                minWidth: 160,
              ),
            )
          ],
        ),
      ),
    );
  }
}
