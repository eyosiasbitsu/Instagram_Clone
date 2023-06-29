
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget{
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create an Account"),
      ),
      
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20.0,),

            Image.asset(
              'assets/images/insta_logo.jpg',
              height: 100.0,
              width: 200.0,
            ),

            const SizedBox(height: 20.0,),
            TextField(
              decoration: InputDecoration(
                labelText: 'Mobile Number or Email',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 10.0,),
            TextField(
              decoration: InputDecoration(
                labelText: 'Full Name',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 10.0,),
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 10.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Navigator.pushReplacementNamed(context, '/home');
                // TODO: Implement the signup button functionality
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                )
              ),

              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        )
        // TODO: Implement the signup screen UI here
      ),
    );
  }
}