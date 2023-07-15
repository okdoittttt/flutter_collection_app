import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../items/bottom_nav_bar.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("숲,어,마켓!"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Store Page',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      bottomNavigationBar: MybottomBar(),
    );
  }
}
