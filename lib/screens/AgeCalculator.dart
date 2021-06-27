// import 'dart:ui';

import 'package:flutter/material.dart';

class AgeCalculator extends StatefulWidget {
  const AgeCalculator({Key? key}) : super(key: key);

  @override
  _AgeCalculatorState createState() => _AgeCalculatorState();
}

class _AgeCalculatorState extends State<AgeCalculator> {
  int selectedYear = DateTime.now().year;

  int age = 0;

  @override
  void initState() {
    super.initState();
    print("selectedYear : $selectedYear");
  }

  _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime(1990),
      firstDate: DateTime(1920, 1),
      lastDate: DateTime(2100, 1),
    ).then((value) {
      setState(() {
        selectedYear = value!.year;
        calculateAge();
      });
    });
  }

  void calculateAge() {
    age = DateTime.now().year - selectedYear;
    // setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Age Calculator"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: _showDatePicker,
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(27),
                ),
                side: BorderSide(
                  color: Colors.deepPurple,
                  width: 3.0,
                ),
              ),
              child: Text(
                selectedYear.toString(),
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Your age is $age",
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
