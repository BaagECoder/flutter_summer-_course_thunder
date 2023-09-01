import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String userName;
  final String userId;
  final String photoUrl;
  final String uid;
  final String photoComment;

  Post({
    required this.userId,
    required this.photoComment,
    required this.userName,
    required this.photoUrl,
    required this.uid,
  });

  static Post fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    print(snapshot);
    return Post(
      userName: snapshot["username"],
      uid: snapshot["uid"],
      photoUrl: snapshot["photoUrl"],
      userId: 'userId',
      photoComment: "photoComment",
    );
  }

  Map<String, dynamic> toJson() => {
        "username": userName,
        "userId": userId,
        "photoComment": photoComment,
        "uid": uid,
        "photoUrl": photoUrl,
      };
}
