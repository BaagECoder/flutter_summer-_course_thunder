import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:icodegram_app/components/layout_page.dart';
import 'package:icodegram_app/pages/home_screen.dart';
import 'package:icodegram_app/pages/login_screen.dart';
import 'package:icodegram_app/components/signUp_input_container.dart';
import 'package:icodegram_app/pages/signUp_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Icodegram',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color.fromRGBO(0, 0, 0, 1),
        textTheme: Typography().white.apply(fontFamily: "Rubik"),

      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
