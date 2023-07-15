import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sns_test/items/bottom_nav_bar.dart';

class ProfileDetailPage extends StatelessWidget {
  const ProfileDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Text('Profile Detail Page'),
        bottomNavigationBar: MybottomBar(),
      ),
    );
  }
}
// FutureBuilder(
//   future: storage.downloadURL('IMG_7929.jpeg'),
//   builder:
//       (BuildContext context, AsyncSnapshot<String> snapshot) {
//     if (snapshot.connectionState == ConnectionState.done &&
//         snapshot.hasData) {
//       return Container(
//         child: Image.network(
//           snapshot.data!,
//           fit: BoxFit.cover,
//         ),
//       );
//     }
//     if (snapshot.connectionState == ConnectionState.waiting ||
//         !snapshot.hasData) {
//       return CircularProgressIndicator();
//     }
//     return Container();
//   },
// )