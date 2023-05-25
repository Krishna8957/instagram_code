 import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

 class Appbar1 extends StatelessWidget {
  const Appbar1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      "Instagram".text.bold.size(22).make()
                    ],
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  children: [
                      Icon(Icons.favorite_outline),
                      SizedBox(width: 20,),
                  Icon(Icons.near_me_outlined)
                  ],
                ),
              )
              ],
            );
  }
}