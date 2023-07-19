import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  Future<String> printUserEmail() async {
    String userEmail = '';

    await FirebaseAuth.instance
        .authStateChanges()
        .listen((User? user) {
      if (user != null) {
        userEmail = user.email ?? '';
        print(userEmail);
      }
    }).asFuture();

    return userEmail;
  }


}