import 'package:flutter/material.dart';
import 'package:lesson_19_flutter/models/user.dart';
import 'package:lesson_19_flutter/resources/auth_method.dart';


class UserProvider with ChangeNotifier {
   User? _user;
   final AuthMethods _authMethods = AuthMethods();

   User get getUser => _user!;

   Future<void> refreshUser() async {
      print('refresh user');
      User user = await _authMethods.getUserDetails();
      print(user);
      _user = user;
      notifyListeners();
   }
}

