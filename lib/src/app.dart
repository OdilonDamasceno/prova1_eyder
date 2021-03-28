import 'package:flutter/material.dart';
import 'modules/home/home_page.dart';

class BankingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Banking",
      theme: ThemeData(
        primaryColor: Colors.blue[200],
        primarySwatch: Colors.lightBlue,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 3,
        ),
      ),
      home: HomePage(),
    );
  }
}
