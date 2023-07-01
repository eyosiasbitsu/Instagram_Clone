
import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/post_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF262626),
        title: const Text('Instagram'),
        ),

      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: 
            List.generate(27, (index){
              return Container(
                padding: const EdgeInsets.all(4.0),
                child: PostItem(),
              );
            }),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, '/signup');
        },
        child: Icon(Icons.arrow_forward),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index){
          if(index == 2){
            Navigator.pushNamed(context, '/login');
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blue,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.blue
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: 'Login',
            backgroundColor: Colors.blue
          ),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.blue
          )
        ],
      )
    )
  );
  }
}
