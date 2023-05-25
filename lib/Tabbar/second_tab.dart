import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget {
 

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
              color: Colors.blueAccent
            ),
          ),
       );
      },
      
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3)
        );
  }
}