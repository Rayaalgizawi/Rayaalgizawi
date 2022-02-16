

import 'package:bank/screen/Finger%20Scan.dart';
import 'package:bank/screen/Sign%20In.dart';
import 'package:bank/screen/splash-screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      title: 'BambKit ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
        home:Splashscren(),
    );
  }
}
