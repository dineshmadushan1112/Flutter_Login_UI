import 'package:flutter/material.dart';
import 'package:untitled/signup.dart';

import 'login.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assignment',
    /* theme: ThemeData(
        primarySwatch: Colors.black12,
      ),*/
      home: LoginScreen(),
    );
  }
}

