import 'package:flutter/material.dart';
import'dart:ui';
import 'package:task3/screens/account_overview.dart';
import 'package:task3/screens/login_screen.dart';
import 'package:task3/screens/navigation_bar.dart';
//import 'package:task3/screens/reports_screen.dart';
import 'package:task3/screens/sign_up_screen.dart';
import 'package:task3/screens/sneak_peek1.dart';
import 'package:task3/screens/sneak_peek2.dart';
import 'package:task3/screens/sneak_peek3.dart';
import 'package:task3/screens/transaction_history.dart';
import 'package:task3/screens/transfer_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'sneak_peek1',
      routes: {
        'sneak_peek1': (context) => const SneakPeek1(),
        'sneak_peek2': (context) => const SneakPeek2(),
        'sneak_peek3': (context) => const SneakPeek3(),
        'sign_up_screen': (context) =>  SignUpScreen(),
        'login': (context) =>  LogInScreen(),
        'navigation_bar': (context) => const Navi(),
      },
    );
  }
}
