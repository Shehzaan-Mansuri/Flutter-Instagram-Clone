import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/util/bubble_stories.dart';
import '../util/account_tab1.dart';
import '../util/account_tab2.dart';
import '../util/account_tab3.dart';
import '../util/account_tab4.dart';

class UserAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'shehzaanofficial',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          actions: [
            Icon(Icons.add_box_outlined),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Icon(Icons.menu),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // profile picture
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),

                  // number of posts, followers, following
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text('237',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                            Text('Posts'),
                          ],
                        ),
                        Column(
                          children: [
                            Text('1M',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                            Text('Followers'),
                          ],
                        ),
                        Column(
                          children: [
                            Text('40',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                            Text('Following'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Name and bio
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shehzaan Mansuri',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    child: Text(
                      'i create beatiful Apps & Websites',
                    ),
                  ),
                  Text(
                    'https://github.com/Shehzaan-Mansuri',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Center(child: Text('Edit Profile')),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),

                  Container(
                    child: Center(child: Icon(Icons.arrow_drop_down)),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ],
              ),
            ),

            // stories
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 0.0, vertical: 20),
              child: Container(
                height: 110,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    BubbleStories(text: 'story 1'),
                    BubbleStories(text: 'story 2'),
                    BubbleStories(text: 'story 3'),
                    BubbleStories(text: 'story 4'),
                    BubbleStories(text: 'story 5'),
                    BubbleStories(text: 'story 6'),
                    BubbleStories(text: 'story 7'),
                  ],
                ),
              ),
            ),

            TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.grid_3x3_outlined),
                ),
                Tab(
                  icon: Icon(CupertinoIcons.videocam_circle),
                ),
                Tab(
                  icon: Icon(CupertinoIcons.heart),
                ),
                Tab(
                  icon: Icon(CupertinoIcons.person_crop_rectangle),
                ),
              ],
            ),

            Expanded(
              child: TabBarView(children: [
                AccountTab1(),
                AccountTab2(),
                AccountTab3(),
                AccountTab4(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
