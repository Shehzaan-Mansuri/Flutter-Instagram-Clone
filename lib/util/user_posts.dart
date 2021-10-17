import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;

  UserPosts({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // profile photo
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  // name
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(CupertinoIcons.ellipsis_vertical)
            ],
          ),
        ),

        // post
        Container(
          height: 400,
          color: Colors.grey[300],
        ),

        // below the post -> buttons and comments
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite, color: Colors.red,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Icon(CupertinoIcons.chat_bubble),
                  ),
                  Icon(CupertinoIcons.paperplane),
                ],
              ),
              Icon(CupertinoIcons.bookmark),
            ],
          ),
        ),

        // like by...
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(children: [
            Text('Liked by '),
            Text(
              'zishan',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(' and '),
            Text(
              'others',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ]),
        ),

        // caption
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8),
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                    text: name, style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        ' Best Full Stack Developer'),
              ],
            ),
          ),
        ),

        // comments
      ],
    );
  }
}
