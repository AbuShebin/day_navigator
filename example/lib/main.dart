import 'package:flutter/material.dart';
import 'package:day_navigator/day_navigator.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Day Navigator Example")),
        body: Center(
          child: DayNavigator(
            initialDate: DateTime.now(),
            onDateChanged: (date) {
              print("Selected: $date");
            },

            /// Optional: Customize the text color of the widget
            textColor: Colors.blue,

            /// Optional: Customize the button color of the widget
            buttonColor: Colors.green,
          ),
        ),
      ),
    );
  }
}
