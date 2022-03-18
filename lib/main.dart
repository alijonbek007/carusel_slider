
import 'package:cars_app/screens/main_screen.dart';
import 'package:cars_app/screens/search_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       backgroundColor: Colors.red,
        primarySwatch: Colors.blue,
      ),
      home: const MainScreen(),
    );
  }
}

