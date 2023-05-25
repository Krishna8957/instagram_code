import 'package:flutter/material.dart';
import 'package:instagram/appbar1.dart';
import 'package:instagram/post.dart';
import 'package:instagram/storis.dart';

class Home extends StatefulWidget {
  

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List people = ["Rahul","Aman", "Krishna","Ajay","Vikash"];
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
               body: SingleChildScrollView(
                 child: Column(
                  children: [
                    Appbar1(),
                    Container(
                      height: 130,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: people.length,
                        itemBuilder: (context, index) {
                          return Stories(text: people[index]);
                        },
                        
                       ),
                    ),
                    SizedBox(height: 10,),
                   Post( name: "krishnapal7576",),
                    Post( name: "Akashpal1625",)
                   
                  ],
                             ),
               ),
            )
            );
                
        // body: SafeArea(
        //       child: Column(
        //         children: [
        //          Appbar1(),
        //           Container(
        //             height: 130,
        //             child: ListView.builder(
        //               scrollDirection: Axis.horizontal,
        //               itemCount: people.length,
        //               itemBuilder: (context, index) {
        //                 return Stories(text: people[index]);
        //               },
                      
        //              ),
        //           ),
        //           SizedBox(height: 10,),
        //          Post( name: "krishnapal7576",),
        //           Post( name: "Akashpal1625",)
                 
        //         ],
        //       ),
        //     ),

      
  }
}




