import 'package:flutter/material.dart';
import 'package:icodegram_app/models/story_model.dart';
import 'package:icodegram_app/models/user_model.dart';

class StoryData{
  String userName;
  String avatarUrl;
  String storyUrl;

  StoryData(this.userName, this.avatarUrl, this.storyUrl);

}



























// final Friends friends =
//     Friends(name: "Нэмэх",
//         profileImage: "assets/images/sarnai.png");
// final List<Story> stories = [
//   Story(
//       url:
//           "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
//       media: MediaType.image,
//       duration: const Duration(seconds: 10),
//       friends: friends),
//   Story(url: "https://images.unsplash.com/photo-1535704882196-765e5fc62a53?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGJldXRpZnVsJTIwZ2lybHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", media: MediaType.image, duration: const Duration(seconds: 8), friends: Friends(
//     name: "Нэмэх",
// profileImage: "assets/images/sarnai.png"),
//   ),
//   Story(url: "https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmV1dGlmdWwlMjBnaXJsfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", media: MediaType.image, duration: const Duration(seconds: 10), friends: friends),
//   Story(url: "https://images.unsplash.com/photo-1514355315815-2b64b0216b14?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDl8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60", media: MediaType.image, duration: const Duration(seconds: 6), friends: friends),
//   Story(url: "https://images.unsplash.com/photo-1584270413639-d5ee397272cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE3fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60", media: MediaType.image, duration: const Duration(seconds: 6), friends: friends),
//   Story(url: "https://images.unsplash.com/photo-1584270413639-d5ee397272cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE3fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60", media: MediaType.image, duration: const Duration(seconds: 6), friends: friends)
//
//
// ];
// const stories = [
//   {
//     "id": 1,
//     "imageUrl": "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
//     "username": "Нэмэх",
//     "isStory": false,
//     "isAdd": true
//   },
//   {
//     "id": 2,
//     "imageUrl": "https://images.unsplash.com/photo-1535704882196-765e5fc62a53?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGJldXRpZnVsJTIwZ2lybHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
//     "username": "Төгөлдөр",
//     "isStory": true,
//     "isAdd": false
//   },
//   {
//     "id": 3,
//     "imageUrl": "https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmV1dGlmdWwlMjBnaXJsfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
//     "username": "Сарнай",
//     "isStory": true,
//     "isAdd": false
//   },
//   {
//     "id": 4,
//     "imageUrl": "https://images.unsplash.com/photo-1606406054219-619c4c2e2100?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzB8fGJldXRpZnVsJTIwZ2lybHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
//     "username": "Ханхүү",
//     "isStory": true,
//     "isAdd": false
//   },
//   {
//     "id": 5,
//     "imageUrl": "https://images.unsplash.com/photo-1529911194209-8578109840df?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDExfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
//     "username": "Төгөлдөр",
//     "isStory": true,
//     "isAdd": false
//   },
//   {
//     "id": 6,
//     "imageUrl": "https://images.unsplash.com/photo-1514355315815-2b64b0216b14?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDl8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
//     "username": "Сарнай",
//     "isStory": true,
//     "isAdd": false
//   },
//   {
//     "id": 7,
//     "imageUrl": "https://images.unsplash.com/photo-1584270413639-d5ee397272cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE3fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
//     "username": "Ханхүү",
//     "isStory": true,
//     "isAdd": false
//   },
// ];
