import 'package:flutter/material.dart';
import 'package:flutter_sns_test/main_screen.dart';
import 'package:flutter_sns_test/pages/colletion_page.dart';
import 'package:flutter_sns_test/pages/store_page.dart';
import 'package:flutter_sns_test/pages/test_page.dart';
import 'package:flutter_sns_test/pages/view_more.dart';

class MybottomBar extends StatelessWidget {
  // const MybottomBar({super.key});
  int seleted_index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.lightBlueAccent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        currentIndex: seleted_index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Collection'),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Store'),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz_outlined), label: 'More'),
        ],
        onTap: (int index){
          if(index == 3){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ViewMorePage()),
            );
          } else if(index == 0){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainPage()),);
          } else if(index == 1){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CollectionPage()),);
          } else if(index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StorePage()),
            );
          }
        },
      ),
    );
  }
}
