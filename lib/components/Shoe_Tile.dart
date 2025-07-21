// ignore: file_names
import'package:flutter/material.dart';
import 'package:flutter_app/models/shoes.dart';

// ignore: must_be_immutable
class ShoeTile extends StatelessWidget {
  Shoes shoes;
   ShoeTile({super.key,required this.shoes});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      width:  200,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12)),
        child: Column(children: [
          Image.asset(shoes.imagepath)





        ],),
    );
  }
}