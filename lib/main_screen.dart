import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'items/bottom_nav_bar.dart';
import 'items/mission_modal.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("숲, 어? 마켓!"),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.fromLTRB(0, 20, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
              icon: Icon(Icons.event_available, size: 40),
              onPressed: () {},
            ),
            SizedBox(height: 10),
            Icon(Icons.workspace_premium, size: 40),
            SizedBox(height: 10),
            Icon(Icons.emoji_events, size: 40),
            SizedBox(height: 8),
            MissionModal(),
            SizedBox(height: 10),
            Icon(Icons.shopping_cart, size: 40),

          ],
        ),

      ),
      bottomNavigationBar: MybottomBar(),
    );
  }
}
