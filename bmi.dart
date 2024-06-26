import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MyState();
}

class _MyState extends State<HomeScreen> {
  double age = 0;
  double weight = 0;
  double height = 0;
  double bmi = 0;
  Color male = const Color(0xff31363f);
  Color female = const Color(0xff31363f);
  bool isMaleActive = false;
  bool isFemaleActive = false;
  String s = "Normal";
  void incrementAge() {
    setState(() {
      age++;
    });
  }

  void decrementAge() {
    setState(() {
      if (age > 0) age--;
    });
  }

  void incrementWeight() {
    setState(() {
      weight++;
    });
  }

  void decrementWeight() {
    setState(() {
      if (weight > 0) weight--;
    });
  }

  void incrementHeight() {
    setState(() {
      height++;
    });
  }

  void decrementHeight() {
    setState(() {
      if (height > 0) height--;
    });
  }

  void changeColorMale() {
    setState(() {
      if (!isMaleActive) {
        male = const Color(0xff76abae);
        female = const Color(0xff31363f);
        isMaleActive = true;
        isFemaleActive = false;
      } else {
        male = const Color(0xff31363f);
        isMaleActive = false;
      }
    });
  }

  void changeColorFemale() {
    setState(() {
      if (!isFemaleActive) {
        female = Colors.pink;
        male = const Color(0xff31363f);
        isFemaleActive = true;
        isMaleActive = false;
      } else {
        female = const Color(0xff31363f);
        isFemaleActive = false;
      }
    });
  }

  void bmiCalc() {
    setState(() {
      if (height > 0) {
        bmi = (weight / ((height / 100) * (height / 100)));
        bmi = double.parse(
            bmi.toStringAsFixed(2)); // Rounding to 2 decimal places
        if (bmi <= 18.4) {
          s = "Underweight";
        } else if (bmi >= 18.5 && bmi <= 24.9) {
          s = "Normal";
        } else if (bmi >= 25.0 && bmi <= 39.9) {
          s = "Overweight";
        } else {
          s = "obese";
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff31363f),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 54),
            child: const Text("BMI APP",
                style: TextStyle(
                    fontSize: 55,
                    color: Colors.white,
                    fontWeight: FontWeight.w700)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 146,
                height: 141,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff31363f)),
                              "Age"),
                        ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '$age',
                          style: const TextStyle(
                            color: Color(0xff31363f),
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.add,
                            size: 35,
                          ),
                          onPressed: incrementAge,
                          color: Colors.black,
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.remove,
                            size: 35,
                          ),
                          onPressed: decrementAge,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Container(
                width: 146,
                height: 141,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff31363f)),
                              "Weight (KG)"),
                        ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '$weight',
                          style: const TextStyle(
                            color: Color(0xff31363f),
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.add,
                            size: 35,
                          ),
                          onPressed: incrementWeight,
                          color: Colors.black,
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.remove,
                            size: 35,
                          ),
                          onPressed: decrementWeight,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 302,
            height: 141,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff31363f)),
                        "Height (cm)")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '$height',
                      style: const TextStyle(
                        color: Color(0xff31363f),
                        fontSize: 65,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.add,
                            size: 35,
                          ),
                          onPressed: incrementHeight,
                          color: Colors.black,
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.remove,
                            size: 35,
                          ),
                          onPressed: decrementHeight,
                          color: Colors.black,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 302,
            height: 198,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff31363f)),
                    "Gender"),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                        style: TextStyle(
                            fontSize: 51,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff31363f)),
                        "I'm a"),
                    Column(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.male,
                            size: 45,
                          ),
                          color: male,
                          onPressed: changeColorMale,
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.female,
                            size: 45,
                          ),
                          color: female,
                          onPressed: changeColorFemale,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: 302,
            height: 141,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Column(
              children: [
                const Text(
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff31363f)),
                    "Your result is"),
                Text(
                  '$bmi',
                  style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 55,
                      color: Color(0xff31363f)),
                ),
                Text(
                  s,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff31363f)),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              width: 139,
              height: 42,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: TextButton(
                  onPressed: bmiCalc,
                  child: const Text(
                    "Calculate",
                    style: TextStyle(
                      color: Color(0xff31363f),
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ))),
        ],
      ),
    );
  }
}
