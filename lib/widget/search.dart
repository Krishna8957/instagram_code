import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Search1 extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[200]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(width: 15,),
                      "Search".text.make(),
                    ],
                  ),
                )),
            ),
    
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: GridView.builder(
                itemCount: 21,
                shrinkWrap: true,
                primary: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
                (crossAxisCount: 2), 
                itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                   
                    color: Colors.blue,
                  ),
                );
              },
              ),
            ),
          ),
        ],
      ),
    );
  }
}