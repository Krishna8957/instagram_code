import 'package:flutter/material.dart';

import 'package:instagram/widget/account.dart';
import 'package:instagram/widget/addpost.dart';
import 'package:instagram/widget/home.dart';
import 'package:instagram/widget/reel.dart';
import 'package:instagram/widget/search.dart';


class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedindex = 0;

  void _navigationbar( int index){
    setState(() {
      _selectedindex = index;
    });
  }
 final List<Widget> children = [  Home(), Search1(),Addphoto(),Reel1(),Account()];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[_selectedindex],
     
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedindex,
        onTap:_navigationbar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.video_library,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.account_box,),label: ""),
        ]
        ),
    );
  }
}