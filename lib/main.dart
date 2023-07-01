
import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/home_screen.dart';
import 'screens/feed_screen.dart';

void main(){
  runApp(InstagramCloneApp());
}

class InstagramCloneApp extends StatelessWidget{
  const InstagramCloneApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Instagram',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      initialRoute: '/home',
      routes: {
        '/home': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignUpScreen(),
        '/feed': (context) => FeedScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}