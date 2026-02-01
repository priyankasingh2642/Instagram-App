import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/story_show_card.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  MediaQueryData? mqData;
  var post = [
    "assets/images/image2.png",
    "assets/images/image11.jpg",
    "assets/images/image12.jpg",
    "assets/images/image13.jpg",
  ];

  var tagpost = [
    "assets/images/image15.jpg",
    "assets/images/image8.jpg",
    "assets/images/image14.jpg",
    "assets/images/image7.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    mqData = MediaQuery.of(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "priya_singh",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          actions: const [
            Icon(Icons.alternate_email, size: 30, color: Colors.white),
            SizedBox(width: 16),
            Icon(
              Icons.add_circle_outline_rounded,
              size: 30,
              color: Colors.white,
            ),
            SizedBox(width: 16),
            Icon(Icons.menu, size: 30, color: Colors.white),
            SizedBox(width: 12),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 3, color: Colors.black),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/image13.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.black),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: ClipOval(
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.black,
                                  size: 28,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        Text(
                          "4",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("posts", style: TextStyle(fontSize: 15)),
                      ],
                    ),

                    Column(
                      children: [
                        Text(
                          "20k",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("followers", style: TextStyle(fontSize: 15)),
                      ],
                    ),

                    Column(
                      children: [
                        Text(
                          "100",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("following", style: TextStyle(fontSize: 15)),
                      ],
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 34.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Text("priya", style: TextStyle(fontSize: 18))],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      " Living life like a queen 👑",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Colors.black,
                        ),
                        child: Text(
                          "Edit profile",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),

                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Colors.black,
                        ),
                        child: Text(
                          "Share profile",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    StoryShowCard(
                      image: "assets/images/image15.jpg",
                      userName: "peace",
                    ),
                    StoryShowCard(
                      image: "assets/images/image11.jpg",
                      userName: "family",
                    ),
                    StoryShowCard(
                      image: "assets/images/image8.jpg",
                      userName: "party",
                    ),
                    StoryShowCard(
                      image: "assets/images/image14.jpg",
                      userName: "sunset",
                    ),
                    StoryShowCard(
                      image: "assets/images/image7.jpg",
                      userName: "nature",
                    ),
                  ],
                ),
              ),

              const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.grid_on_rounded)),
                  Tab(icon: Icon(Icons.person_pin_outlined)),
                ],
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: TabBarView(
                  children: [
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: post.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 4,
                            crossAxisSpacing: 4,
                          ),
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: 100,
                          width: 100,
                          child: Image.asset(post[index], fit: BoxFit.cover),
                        );
                      },
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: tagpost.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 4,
                            crossAxisSpacing: 4,
                          ),
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: 100,
                          width: 100,
                          child: Image.asset(tagpost[index], fit: BoxFit.cover),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
