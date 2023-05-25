// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Post extends StatelessWidget {
  
final String name;


  const Post({
    Key? key,
    required this.name,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                 Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    shape: BoxShape.circle,
                  ),
                 ),
                SizedBox(width: 15,),
                 Text(name,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),)
                 
              ],
               ),
               Row(
              children: [
               Icon(Icons.more_vert)
              ],
             )
            ],
          ),
        ),
  SizedBox(height: 10,),
        Container(
          height: 400,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/krishna.jpeg"),fit:BoxFit.cover),
            color: Colors.grey
          ),
        ),
        SizedBox(height: 10,),
        Divider(thickness: 0.4,color: Colors.grey[400],),
         SizedBox(height: 10,),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 10),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite,color: Colors.red[500],),
                  SizedBox(width: 15,),
                  Icon(Icons.chat_bubble_outline),
                   SizedBox(width: 15,),
                  Icon(Icons.near_me_outlined)
                ],
              ),
              Row(
                children: [
                   Icon(Icons.bookmark_outline_outlined)
                ],
              )
            ],
           ),
         ),
         Container(
          padding:EdgeInsets.symmetric(horizontal: 10),
           child: Text.rich(
            TextSpan(
              children: [
                TextSpan(text: 'Liked by'),
                TextSpan(text: " rupesh_yadav_0070",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15)),
                 TextSpan(text: ' and'),
                 TextSpan(text: " 51 others",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15)),
              ]
              )
           ),
         ),
         Container(
          padding:EdgeInsets.symmetric(horizontal: 10),
          child: "view all 5 comments".text.make()),
           SizedBox(height: 7,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "krishnapal7937 💗💗💗💗💗💗".text.bold.size(15).make(),
                SizedBox(height: 7,),
                Row(
                  children: [
                    "vikash1618".text.bold.size(15).make(),
                     " Handsome man 🔥🔥🔥🔥".text.semiBold.size(14).make()
                  ],
                ),
              ],
            ),
          )
      ],
    );
  }
}
