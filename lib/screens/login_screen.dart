
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram'),
      ),

      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/insta_logo.jpg',
              height: 100.0,
            ),
            
            const SizedBox(height: 20.0,),
            TextField(
              decoration: InputDecoration(
                hintText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 10,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 10.0,),

            // Here is the login Button
            ElevatedButton(
              onPressed: (){
                Navigator.pushReplacementNamed(context, '/feed');
                // TODO: Implement the login button functionality
              },
              child: const Text("Log In"),
            ),

            // Here is the forgot password button
            TextButton(
              onPressed: () {
                // TODO: Implement the "Forgot password?" functionality
              },

              child: const Text('Forgot Password?'),
            ),

            const Row(
              children: [
                Expanded(child: Divider()),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text('OR'),
                ),
                Expanded(child: Divider()),
              ],
            ),

            ElevatedButton.icon(
              onPressed: (){
                // TODO: Implement the "Login with facebook" functionality
              }, 
              icon: Icon(Icons.facebook), 
              label: Text('Log in with Facebook')
            )

            // TODO: Implement the rest of the login screen UI here
          ],
        ),

      ),
    );
  }
}