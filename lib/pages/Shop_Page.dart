import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'package:flutter_app/models/shoes.dart';

import '../components/Shoe_Tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ShopPage> {
  @override
  Widget build(BuildContext contextd) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          margin:const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(color: CupertinoColors.placeholderText,
          borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:const [
              Text("SEARCH",style: TextStyle(color: const Color.fromARGB(40, 13, 13, 14)),),
              Icon(Icons.search),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text("Elegance is not a trend, it’s a lifestyle signed by Wejden",style: TextStyle(color:const Color.fromARGB(255, 9, 9, 9)),),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text("Hotpicks🔥",
              style: 
              TextStyle(fontWeight:FontWeight.bold,
              fontSize: 20),),
              Text("See All",
               style: 
              TextStyle(fontWeight:FontWeight.bold,
              fontSize: 20),
              
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
      Expanded(
  child: ListView.builder(
    itemBuilder: (context, index) {
      Shoes shoes=Shoes(name:'scarpin',
       price: '240§',
        imagepath: 'lib/images/WhatsApp Image 2025-07-16 à 15.09.51_7477f134.jpg',
         description: 'classy');
      return ShoeTile(
         shoes: shoes,
      );
    },
      ),
  ),
      ],
    );
  }
}
