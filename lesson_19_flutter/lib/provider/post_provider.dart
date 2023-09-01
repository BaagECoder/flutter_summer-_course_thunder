import 'package:flutter/material.dart';
import 'package:lesson_19_flutter/models/post.dart';
import 'package:lesson_19_flutter/models/user.dart';
import 'package:lesson_19_flutter/resources/auth_method.dart';


class PostProvider with ChangeNotifier {
  Post? _post;
  final AuthMethods _authMethods = AuthMethods();

  Post get getPost => _post!;

  Future<void> refreshPost() async {
Post post = await _authMethods.getPostDetails();
    print(post);
    _post = post;
    notifyListeners();
  }
}

