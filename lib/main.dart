import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterfire_ui/auth.dart';

// UI Class Import
import 'main_screen.dart';

void main() async{
  // flutter에서 firebase를 사용하기 위해 비동기 방식으로 해야한다.
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Authentication(),
    );
  }
}

class Authentication extends StatelessWidget {
  const Authentication({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      // Login, Logout 할 때 마다 authentication state가 변하게 된다. builder 매서드를 통해 새롭게 화면을 구성할 수 있게 된다.
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot){
        // sanpshot이 데이터를 갖고 있지 않다면 로그인 화면, 로그인 상태라면 다른 화면
        if(!snapshot.hasData){
          return SignInScreen(
            headerBuilder: (context, constraints, double){
              return Padding(
                padding: EdgeInsets.all(20),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image(
                    image: AssetImage('image/jangune.png'),
                  ),
                ),
              );
            },
            providerConfigs: [
              EmailProviderConfiguration()
            ],
          );
        }
        return MainPage();
      },
    );
  }
}
