import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/uihelper.dart';

class Searchscreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var explore = [
    "assets/images/image1.png",
    "assets/images/image4.png",
    "assets/images/image11.jpg",
    "assets/images/image7.jpg",
    "assets/images/image6.png",
    "assets/images/image12.jpg",
    "assets/images/image8.jpg",
    "assets/images/image9.jpg",
    "assets/images/image10.jpg",
    "assets/images/image13.jpg",
    "assets/images/image15.jpg",
    "assets/images/image2.png",
    "assets/images/image13.jpg",
    "assets/images/image3.png",
    "assets/images/image4.png",
    "assets/images/image14.jpg",
    "assets/images/image5.png",
    "assets/images/image6.png",
    "assets/images/image8.jpg",
    "assets/images/image11.jpg",
    "assets/images/image10.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 60),
          Row(
            children: [
              SizedBox(width: 10),
              Container(
                height: 36,
                width: 393,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0XFF262626),
                ),
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: "Search",
                    prefixIcon: UiHelper.CustomImage(imgurl: "search.png"),
                    hintStyle: const TextStyle(
                      fontSize: 16,
                      color: Color(0XFF8E8E93),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              itemCount: explore.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
              ),
              itemBuilder: (context, index) {
                return Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(explore[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
