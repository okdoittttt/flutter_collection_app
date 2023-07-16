import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../items/bottom_nav_bar.dart';

class CollectionPage extends StatelessWidget {
  CollectionReference product = FirebaseFirestore.instance.collection("shop");
  // final Future<FirebaseApp> _initalization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TEST'),
      ),
      body: StreamBuilder(
        stream: product.snapshots(),
        builder: (BuildContext context,
            AsyncSnapshot<QuerySnapshot> streamSnapshot) {
          if (streamSnapshot.hasData) {
            return ListView.builder(
              itemCount: streamSnapshot.data!.docs.length,
              itemBuilder: (context, index) {
                final DocumentSnapshot documentSnapshot = streamSnapshot.data!.docs[index];

                print('DocumentSnapshot TEST :  $documentSnapshot');
                return Card(
                  margin: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                  child: ListTile(
                    title: Text(documentSnapshot['shop_name']),
                    subtitle: Text(documentSnapshot['location']),
                  ),
                );
              },
            );
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
      bottomNavigationBar: MybottomBar(),
    );
  }
}


// rules_version = '2';
//
// service cloud.firestore {
// match /databases/{database}/documents {
// match /{document=**} {
// allow read, write: if false;
// }
// }
// }
