import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  
 final text;
     Stories({required this.text});
  @override
  Widget build(BuildContext context) {
     
    return Padding(
             padding: const EdgeInsets.all(8.0),
             child: Column(
               children: [
                 Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                    border: Border.all(color: Colors.red,width: 3)
                  ),
                 ),
                 SizedBox(height: 10,),
                 Text(text),
               ],
             ),
           );
  }
}