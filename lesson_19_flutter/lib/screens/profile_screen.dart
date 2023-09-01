import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lesson_19_flutter/provider/user_provider.dart';
import 'package:provider/provider.dart';
import 'package:lesson_19_flutter/models/user.dart' as model;
import 'package:lesson_19_flutter/provider/user_provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String userName = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserName();
    addData();
  }

  void getUserName() async {
    DocumentSnapshot snapshot = await FirebaseFirestore.instance
        .collection("user")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();
    print(snapshot.data());
  }

  void addData() async {
    UserProvider userProvider = Provider.of(context, listen: false);

    await userProvider.refreshUser();
  }

  @override
  Widget build(BuildContext context) {
    model.User user = Provider.of<UserProvider>(context).getUser;


    return Scaffold(
      body: Center(
        child: Text(
          user.userName,
        ),
      ),
    );
  }
}
