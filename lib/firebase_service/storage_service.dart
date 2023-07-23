import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_core/firebase_core.dart' as firebase_core;

class Storage {
  final firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

  Future<void> uploadFile(
    String filePath,
    String fileName,
  ) async {
    File file = File(filePath);

    try {
      await storage.ref('test_img/$fileName').putFile(file);
      print("Success! $fileName");
    } on firebase_core.FirebaseException catch (e) {
      print(e);
    }
  }

  Future<firebase_storage.ListResult> listFile() async {
    firebase_storage.ListResult results =
        await storage.ref('profile').listAll();

    results.items.forEach((firebase_storage.Reference ref) {
      print('Found File: $ref');
    });

    return results;
  }

  Future<String> downloadURL(String imageName) async {
    String downloadURL =
        await storage.ref('profile/$imageName').getDownloadURL();

    return downloadURL;
  }
}
