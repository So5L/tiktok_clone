import 'package:flutter/material.dart';
import 'package:tiktok_clone/challenge/main_screen.dart';
import 'package:tiktok_clone/constants/sizes.dart';

void main() {
  runApp(const TiktokApp());
}

class TiktokApp extends StatelessWidget {
  const TiktokApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tiktok Clone',
      theme: ThemeData(
          useMaterial3: false,
          scaffoldBackgroundColor: Colors.white,
          primaryColor: const Color(0xFFE9435A),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 0,
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: Sizes.size16 + Sizes.size2,
              fontWeight: FontWeight.w600,
            ),
          )),
      home: const MainScreen(),
    );
  }
}

// 미리 모든 앱개발을 위해 Web 부터 공부해보자