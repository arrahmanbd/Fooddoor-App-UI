import 'package:flutter/material.dart';
import 'package:fooddoor/views/screen/home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.tealAccent, // Your accent color
        ),
        primarySwatch: Colors.teal,
        secondaryHeaderColor: Colors.tealAccent
      ),
      home: HomePage(),
    );
  }
}
