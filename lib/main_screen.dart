import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'items/bottom_nav_bar.dart';
import 'items/mission_modal.dart';
import 'items/achievement_modal.dart';

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
            Icon(Icons.event_available, size: 40),

            AchievementModal(),

            SizedBox(height: 10),
            Icon(Icons.emoji_events, size: 40),

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
