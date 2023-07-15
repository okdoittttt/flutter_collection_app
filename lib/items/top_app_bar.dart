import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        title: Text('숲?어,마켓!'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){
                FirebaseAuth.instance.signOut();
              },
              icon: Icon(
                Icons.expand_circle_down_sharp,
                color: Colors.white,
              ),)
        ],
      ),
    );
  }
}
