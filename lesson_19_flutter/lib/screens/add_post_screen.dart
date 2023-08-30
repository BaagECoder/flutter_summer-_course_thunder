import 'dart:typed_data';
import 'package:image_picker/image_picker.dart';
import 'package:lesson_19_flutter/provider/user_provider.dart';

import 'package:flutter/material.dart';
import 'package:lesson_19_flutter/models/user.dart' as model;
import 'package:lesson_19_flutter/utils/utils.dart';
import 'package:provider/provider.dart';

class AddScreenPost extends StatefulWidget {
  const AddScreenPost({super.key});

  @override
  State<AddScreenPost> createState() => _AddScreenPostState();
}

class _AddScreenPostState extends State<AddScreenPost> {
  Uint8List? _file;
  TextEditingController _descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    model.User user = Provider.of<UserProvider>(context).getUser;

    return _file == null
        ? Center(
            child: IconButton(
              icon: Icon(Icons.upload),
              onPressed: () {
                _selectImage(context);
              },
            ),
          )
        : Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  // Handle back button press
                },
              ),
              title: Text('Post to'),
              centerTitle: false,
              actions: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Post",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ],
            ),
            body: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(user.photoUrl),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 3,
                      child: TextField(
                        controller: _descriptionController,
                        decoration: InputDecoration(
                          hintText: "Write a caption",
                          border: InputBorder.none,
                        ),
                        maxLines: 8,
                      ),
                    ),
                    SizedBox(
                      height: 45,
                      width: 45,
                      child: AspectRatio(
                        aspectRatio: 487 / 451,
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              alignment: FractionalOffset.topCenter,
                              fit: BoxFit.fill,
                              image: MemoryImage(_file!),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                  ],
                ),
              ],
            ),
          );
  }
}

void _selectImage(BuildContext context) async {
  showDialog(context: context, builder: (BuildContext context) {
    return
    SimpleDialog(
      title: Text(
          "Create a Post"
      ) ,
      children: [
        SimpleDialogOption(

        ),
      ],
    );
  });
  Uint8List image = await pickImage(ImageSource.gallery);
  // setState(() {
  //   _file = file;
  // });
}



