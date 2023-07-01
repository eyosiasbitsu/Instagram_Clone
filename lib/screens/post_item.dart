
import 'package:flutter/material.dart';

class PostItem extends StatefulWidget{
  const PostItem({super.key});

  @override
  _PostItemState createState() => _PostItemState();
}

class _PostItemState extends State<PostItem>{
  bool isLiked = false;
  int likesCount = 0;
  List<String> comments = [];

  void toggleLike(){
    setState(() {
     if (isLiked){
      isLiked = false;
      likesCount--;
     }else{
      isLiked = true;
      likesCount++;
     }
    });
  }

  void addCommet(String commet){
    setState(() {
      comments.add(commet);
    });
  }

  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(16.0),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20.0,
                // Replace with actual user profile image
                backgroundImage: AssetImage('assets/images/profile_pic.jpeg'),
              ),

              const SizedBox(width: 8.0,),
              Text(
                '@fitsum123', // Replace with the actual username
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),

          const SizedBox(height: 8.0,),
          // Replace the image below with the actual post image
          Image.asset('assets/images/post_pic.jpeg'),

          const SizedBox(height: 8.0,),
          Row(
            children: [
              Icon(Icons.share),
              IconButton(
                onPressed: toggleLike, 
                icon: Icon(
                  isLiked? Icons.favorite : Icons.favorite_border,
                  color: isLiked? Colors.red : null,
                ),
              ),

              const SizedBox(width: 8.0,),
              Text(
                '$likesCount likes',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),

          const SizedBox(height: 8.0,),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      // Text field will be coded here
                    ),
                  ),

                  IconButton(
                    onPressed: (){
                      final comment = 'Simple comment';
                      addCommet(comment); // you can replace the text with a real commnet
                    }, 
                    icon: Icon(Icons.send),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}