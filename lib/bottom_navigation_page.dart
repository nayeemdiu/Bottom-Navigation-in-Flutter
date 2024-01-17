import 'package:bottom_navigation_flutter/screen/favorite.dart';
import 'package:bottom_navigation_flutter/screen/home.dart';
import 'package:bottom_navigation_flutter/screen/profile.dart';
import 'package:bottom_navigation_flutter/screen/settings.dart';
import 'package:flutter/material.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int mycurrentIndex = 1;
  List pages = [
    HopePage(),
    Favorite(),
    Settings(),
    Profile(),
    Favorite(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar:
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          decoration:BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.5),blurRadius: 25,
              offset: const Offset(8, 20))
            ]

          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: BottomNavigationBar(
                backgroundColor: Colors.white,
                selectedItemColor: Colors.amber,
                unselectedItemColor: Colors.black,
                currentIndex: mycurrentIndex,
                onTap: (index){
                  setState(() {
                    mycurrentIndex = index;
                  });
                },
                items: const  [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: "Favorit"),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Setting"),
            BottomNavigationBarItem(icon: Icon(Icons.person_off_outlined),label: "Profile"),
                  BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: "Favorit"),

                ]),
          ),
        ),


     body: pages[mycurrentIndex],




    );
  }
}
