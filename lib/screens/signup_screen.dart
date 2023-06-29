
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget{
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
      ),

      body: Container(
        child: const Text(
          'Welcome to the Signup Screen!',
          style: TextStyle(fontSize: 20.0),
        ),
        // TODO: Implement the signup screen UI here
      ),
    );
  }
}