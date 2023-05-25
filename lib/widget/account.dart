import 'package:flutter/material.dart';
import 'package:instagram/Tabbar/first_tab.dart';
import 'package:instagram/Tabbar/second_tab.dart';
import 'package:instagram/Tabbar/third.dart';
import 'package:instagram/storis.dart';
import 'package:instagram/user.dart';
import 'package:velocity_x/velocity_x.dart';


class Account extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              User1(),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.yellowAccent,
                              shape: BoxShape.circle
                            ),
                          ),
                          
                        ],
                      ),
                      Column(
                            children: [
                              "50".text.bold.size(17).make(),
                              "Post".text.size(14).make()
                            ],
                          ),
                          Column(
                            children: [
                              "4999".text.bold.size(17).make(),
                              "Followers".text.size(14).make()
                            ],
                          ),
                          Column(
                            children: [
                              "15".text.bold.size(17).make(),
                              "Following".text.size(14).make()
                            ],
                          )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.bottomLeft,
                  child:"krishna Pal".text.size(15).make(), 
                  ),
              
               Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.bottomLeft,
                  child:"Editor, and app ui build".text.size(15).make(), 
                  ),
                  Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.bottomLeft,
                  child:"k.tech krishna/youtube.com".text.size(15).color(Colors.blue).make(), 
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.grey[300]
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35,vertical:8),
                          child: Text("Edit profile",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15),),
                        ),
                      ),
                       Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.grey[300]
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35,vertical:8),
                          child: Text("Share profile",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15),),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 130,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                         Stories(text: 'Stori 1'),
                         Stories(text: 'Stori 2'),
                         Stories(text: 'Stori 3'),
                         Stories(text: 'Stori 4'),
                         Stories(text: 'Stori 5'),
                      ],
                    ),
                  ),
                   SizedBox(height: 10,),
      
                   TabBar(
                    tabs: [
                      Tab(child: Icon(Icons.grid_on)),
                      Tab(child: Icon(Icons.video_library)),
                      Tab(child: Icon(Icons.account_box))
                    ]
                    ),
      
      Expanded(
        child: TabBarView(
          children: [
            FristTab(),
            SecondTab(),
            ThirdTab()
          ]
          ),
      )
                   
            ],
          ),
        ),
      ),
    );
  }
}