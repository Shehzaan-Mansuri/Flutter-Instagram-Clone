import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/util/bubble_stories.dart';
import 'package:instagram_clone/util/user_posts.dart';

class UserHome extends StatelessWidget {
  final List people = [
    'Shehzaan',
    'Affan',
    'Sarfaraz',
    'Sufiyan',
    'Adnan',
    'Amaan',
    'Shaaz',
    'Nadir',
    'Ahad',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Instagram',
                style: TextStyle(color: Colors.black),
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      // do something..
                    },
                    child: Icon(Icons.add_box_outlined),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: GestureDetector(
                      onTap: () {
                        // do something..
                      },
                      child: Icon(CupertinoIcons.chat_bubble_text),
                    ),
                  ),
                ],
              )
            ],
          )),
      body: Column(
        children: [
          // STORIES
          Container(
            height: 130,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return BubbleStories(text: people[index]);
                }),
          ),

          // POSTS
          Expanded(
            child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPosts(
                    name: people[index],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
