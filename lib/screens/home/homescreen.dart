import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/message/messagescreen.dart';
import 'package:instagram_clone/widgets/story_show_card.dart';
import 'package:instagram_clone/widgets/user_post_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  MediaQueryData? mqData;

  @override
  Widget build(BuildContext context) {
    mqData = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.asset(
          'assets/images/logo.png',
          height: 40,
          fit: BoxFit.cover,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border_rounded,
              size: 30,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MessageScreen()),
              );
            },
            icon: Image.asset(
              "assets/images/messenger.png",
              height: 30,
              width: 30,
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: mqData!.size.width * 0.35,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      "assets/images/image11.jpg",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: ClipOval(
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        color: Colors.blue,
                                      ),
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Your Story",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(width: 5),
                      StoryShowCard(
                        image: "assets/images/image5.png",
                        userName: "rohit",
                      ),
                      StoryShowCard(
                        image: "assets/images/image2.png",
                        userName: "queen_123",
                      ),
                      StoryShowCard(
                        image: "assets/images/image10.jpg",
                        userName: "cutegirl",
                      ),
                      StoryShowCard(
                        image: "assets/images/image12.jpg",
                        userName: "roshni.sharma",
                      ),
                      StoryShowCard(
                        image: "assets/images/image13.jpg",
                        userName: "priya_cutie",
                      ),
                      StoryShowCard(
                        image: "assets/images/image11.jpg",
                        userName: "queensince2000",
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "suggested for you",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Older Post",
                    style: TextStyle(fontSize: 18, color: Colors.blueAccent),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            UserPostCard(
              numLikes: 1234,
              subTitle: 'mile ho tum humko',
              postImage: 'assets/images/image10.jpg',
              postProfile: 'assets/images/image10.jpg',
              userName: 'cutegirl',
            ),

            UserPostCard(
              numLikes: 8375,
              subTitle: 'Peace',
              postImage: 'assets/images/image7.jpg',
              postProfile: 'assets/images/image2.png',
              userName: 'queen_123',
            ),
            UserPostCard(
              numLikes: 3576,
              subTitle: 'cheers',
              postImage: 'assets/images/image8.jpg',
              postProfile: 'assets/images/image5.png',
              userName: 'rohit',
            ),
            UserPostCard(
              numLikes: 9846,
              subTitle: 'Happy New Year',
              postImage: 'assets/images/image9.jpg',
              postProfile: 'assets/images/image3.png',
              userName: 'books.peace',
            ),
            UserPostCard(
              numLikes: 3867,
              subTitle: 'Sunset',
              postImage: 'assets/images/image14.jpg',
              postProfile: 'assets/images/image12.jpg',
              userName: 'raahi9087',
            ),
            UserPostCard(
              numLikes: 1516,
              subTitle: 'Nature',
              postImage: 'assets/images/image15.jpg',
              postProfile: 'assets/images/image13.jpg',
              userName: 'priyathequeen',
            ),
          ],
        ),
      ),
    );
  }
}
