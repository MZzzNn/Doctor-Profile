import 'package:flutter/material.dart';
import './screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      theme: ThemeData(
        primaryColor: Color(0xff063F5F),
        accentColor: Color(0xff0F7260),
        canvasColor: Color(0xff404040),
        appBarTheme: AppBarTheme(
          color:Color(0xff063F5F)
        ),
      ),
    );
  }
}