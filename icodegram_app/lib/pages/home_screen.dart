import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:icodegram_app/components/storybtn..dart';
import 'package:icodegram_app/pages/layout_main_screen.dart';
import 'package:icodegram_app/components/logo_widget.dart';
import 'package:icodegram_app/pages/story_screen.dart';
import 'package:icodegram_app/models/data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<StoryData> stories = [
    new StoryData("Нэмэх", "https://i.ibb.co/J55McTy/unnamed.png",
        "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=632&q=80"),
    new StoryData("Төгөлдөр", "https://i.ibb.co/2vyQRjw/Inner-Oval-1.png",
        "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=632&q=80"),
    new StoryData("Сарнай", "https://i.ibb.co/HrF4H7m/Inner-Oval-4.png",
        "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=632&q=80"),
    new StoryData("Мөнхөө", "https://i.ibb.co/Cn0wWGW/Inner-Oval-5.png",
        "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=632&q=80"),
    new StoryData("УранГоо", "https://i.ibb.co/8xRfS41/Inner-Oval-3.png",
        "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=632&q=80"),
    new StoryData("Энээ", "https://i.ibb.co/vQSr6BV/Inner-Oval-2.png",
        "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=632&q=80"),
    new StoryData("Энхжин", "https://i.ibb.co/CQjJFjH/Inner-Oval-6.png",
        "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=632&q=80"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "iCodegram",
          style: TextStyle(
            color: Color(0xFFFFFFFFF),
            fontFamily: "lobster",
            fontSize: 34,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                storyButton(stories[0], context),
                storyButton(stories[1], context),
                storyButton(stories[2], context),
                storyButton(stories[3], context),
                storyButton(stories[4], context),

              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 26.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.white30, shape: BoxShape.circle),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Username",
                          style: TextStyle(
                            color: Colors.white30,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white30,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.30,
                  color: Colors.white30,
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],

      ),

      // POST CONTAINER //

    );
  }

  // Widget getBody() {
  //   var stories;
  //   return ListView(
  //     children: [
  //       Row(
  //         children: [
  //           SingleChildScrollView(
  //             scrollDirection: Axis.horizontal,
  //             padding: EdgeInsets.only(top: 5, left: 5, right: 5),
  //             child: Row(
  //                 children: List.generate(stories.length, (index) {
  //               return Padding(
  //                 padding: const EdgeInsets.all(3.0),
  //                 child: Container(
  //                   width: 80,
  //                   child: Column(
  //                     children: [
  //                       Stack(
  //                         children: [
  //                           Container(
  //                             decoration: BoxDecoration(
  //                               shape: BoxShape.circle,
  //                               gradient: LinearGradient(
  //                                 colors: [
  //                                   Color.fromARGB(250, 149, 2, 1),
  //                                   Color.fromARGB(250, 149, 65, 1)
  //                                 ],
  //                               ),
  //                             ),
  //                             child: Padding(
  //                               padding: EdgeInsets.all(2.0),
  //                               child: Container(
  //                                 height: 70,
  //                                 width: 70,
  //                                 decoration: BoxDecoration(
  //                                   shape: BoxShape.circle,
  //                                   border: Border.all(
  //                                       width: 2, color: Colors.white30),
  //                                   image: DecorationImage(
  //                                     image:
  //                                         NetworkImage(stories[0]['imageUrl']),
  //                                   ),
  //                                 ),
  //                               ),
  //                             ),
  //                           ),
  //                         ],
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //               );
  //             })),
  //           ),
  //         ],
  //       ),
  //     ],
  //   );
  // }
}
