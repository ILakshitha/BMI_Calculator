import 'package:flutter/material.dart';
import 'package:my_app/consants.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int height = 176;
  int weight = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(Icons.male, size: 150),
                        ),
                        Text("Male"),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.female,
                          size: 150,
                        ),
                      ),
                      Text("Female"),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Text("Height", style: kr1text),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "176",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: null,
                              child: Icon(
                                Icons.remove,
                                size: 40,
                              ),
                              //backgroundColor: Colors.amber,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              onPressed: null,
                              child: Icon(
                                Icons.add,
                                size: 40,
                              ),
                              //backgroundColor: Colors.amber,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Text("weight", style: kr1text),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text("76", style: kr2c2),
                            ),
                            Row(
                              children: [
                                FloatingActionButton(
                                  onPressed: null,
                                  child: Icon(
                                    Icons.remove,
                                    size: 40,
                                  ),
                                  // backgroundColor: ktextcolor,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                FloatingActionButton(
                                  onPressed: null,
                                  child: Icon(
                                    Icons.add,
                                    size: 40,
                                  ),
                                  //backgroundColor: Colors.amber,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Column(
                children: [
                  Text(
                    "BMI",
                    style: TextStyle(
                      fontSize: 80,
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    "120",
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /*void call() {
    print("object");
  }*/
}
