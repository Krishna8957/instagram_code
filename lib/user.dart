import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class User1 extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return  Row( 
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      "Krishnapal7576".text.bold.size(19).make(),
                      SizedBox(width: 10,),
                      Icon(Icons.keyboard_arrow_down,size: 19,)
                    ],
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  children: [
                      Icon(Icons.add_box_outlined),
                      SizedBox(width: 20,),
                  Icon(Icons.menu)
                  ],
                ),
              )
              ],
            );
  }
}