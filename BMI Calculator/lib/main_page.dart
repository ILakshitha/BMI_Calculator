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
  late double bmi = calculateBMI(height: height, weight: weight);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              const Row(
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
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        const Text("Height", style: kr1text),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "$height",
                            style: const TextStyle(
                              color: Colors.blue,
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (height > 50) height--;
                                });

                                print(height);
                              },
                              child: const Icon(
                                Icons.remove,
                                size: 40,
                              ),
                              backgroundColor: Colors.amber,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (height < 220) height++;
                                });

                                print(height);
                              },
                              child: const Icon(
                                Icons.add,
                                size: 40,
                              ),
                              backgroundColor: Colors.amber,
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
                              child: Text("$weight", style: kr2c2),
                            ),
                            Row(
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      if (weight > 20) weight--;
                                    });

                                    print(height);
                                  },
                                  child: Icon(
                                    Icons.remove,
                                    size: 40,
                                  ),
                                  backgroundColor: ktextcolor,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      if (weight < 150) weight++;
                                      //bmi = calculateBMI(
                                      // height: height, weight: weight);
                                    });

                                    print(height);
                                  },
                                  child: Icon(
                                    Icons.add,
                                    size: 40,
                                  ),
                                  backgroundColor: Colors.amber,
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
              Container(
                height: 100,
                width: 200,
                child: FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      bmi = calculateBMI(height: height, weight: weight);
                    });
                  },
                  child: Text(
                    "Calculate",
                    style: kr1text,
                  ),
                ),
              ),
              Column(
                children: [
                  Text(
                    "BMI",
                    style: TextStyle(
                      fontSize: 80,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    bmi.toStringAsFixed(2),
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    getResult(),
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  double calculateBMI({required int height, required int weight}) {
    return (weight / (height * height)) * 10000;
  }

  String getResult() {
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
}
