import 'package:flutter/material.dart';

class FristTab extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 15,
      itemBuilder: (context, index) {
       return Padding(
         padding: const EdgeInsets.all(6.0),
         child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.pinkAccent
            ),
          ),
       );
      },
      
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3)
        );
  }
}