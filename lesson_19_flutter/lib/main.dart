import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lesson_19_flutter/screens/home_screen.dart';
import 'package:lesson_19_flutter/screens/login_screen.dart';
import 'package:lesson_19_flutter/screens/signup_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          if (snapshot.hasData) {
            return HomeScreen();
          }else if (snapshot.hasError) {
            return Center(
              child:
              Text(
                "${snapshot.error}"
              ),
            );
          }
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
return Center(
  child: CircularProgressIndicator(
    color: Colors.white,
  ),
);
        }else {
          return LoginScreen();
        }



      },
    ),
  ));
}
