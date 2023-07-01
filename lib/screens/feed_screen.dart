
import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/post_item.dart';

class FeedScreen extends StatelessWidget{
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram'),
      ),

      body: ListView.builder(
        itemCount: 10, // Number of posts
        itemBuilder: (context, index){
          return PostItem(); // We create a separate postItem widget for the posts
        }
      ),
    );
  }
}