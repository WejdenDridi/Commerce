import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
 
// ignore: must_be_immutable
class BottonNavigationbar extends StatelessWidget {
  void Function(int)? onTabChange;
 BottonNavigationbar ({super.key,required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return  GNav(
        color:const Color.fromARGB(255, 115, 112, 112),
        activeColor: const Color.fromARGB(255, 7, 7, 7),
        tabActiveBorder:Border.all(color: const Color.fromARGB(255, 184, 183, 183)),
mainAxisAlignment: MainAxisAlignment.center,
tabBackgroundColor: const Color.fromARGB(75, 29, 29, 30),
 onTabChange: (value) =>onTabChange!(value) ,        
        tabs:const [
          GButton(icon: Icons.home ,text: "Shop",textColor: Colors.black,),
          GButton(icon: Icons.shopping_bag_outlined,text: "Cart",textColor: Colors.black,),
          
          
        ],
        
    );
  }
}