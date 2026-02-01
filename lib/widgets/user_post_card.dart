import 'package:flutter/material.dart';

class UserPostCard extends StatefulWidget {
  String postProfile;
  String postImage;
  int numLikes;
  String userName;
  String subTitle;

  UserPostCard({
    super.key,
    required this.numLikes,
    required this.subTitle,
    required this.postImage,
    required this.postProfile,
    required this.userName,
  });

  @override
  State<UserPostCard> createState() => _UserPostCardState();
}

class _UserPostCardState extends State<UserPostCard> {
  MediaQueryData? mediaQueryData;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Column(
      children: [
        ListTile(
          title: Text(
            widget.userName,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          leading: ClipOval(
            child: Image.asset(
              widget.postProfile,
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
          ),
          subtitle: Text(widget.subTitle),
          trailing: const Icon(Icons.more_vert),
        ),
        Image.asset(
          widget.postImage,
          fit: BoxFit.cover,
          height: 500,
          width: double.infinity,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border_rounded, size: 30),
                ),
                const Icon(Icons.chat_bubble_outline, size: 30),
                SizedBox(width: 5),
                const Icon(Icons.share, size: 30),
              ],
            ),
            const Icon(Icons.bookmark_border, size: 30),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              Text(
                widget.numLikes.toString(),
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 5),
              Text(
                "likes",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
