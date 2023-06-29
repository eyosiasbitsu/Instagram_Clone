
import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';

void main(){
  runApp(InstagramCloneApp());
}

class InstagramCloneApp extends StatelessWidget{
  const InstagramCloneApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Instagram Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}