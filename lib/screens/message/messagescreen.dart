import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var arrcontent = [
    {
      "img": "oval1.png",
      "name": "karennne",
      "lastmsg": "I heard this is a good movie, s…",
    },
    {
      "img": "oval2.png",
      "name": "Martini_rond",
      "lastmsg": "See you on the next meeting!",
    },
    {"img": "oval3.png", "name": "Andrewww_", "lastmsg": "Sounds good 😂😂😂"},
    {"img": "oval4.png", "name": "Ronika", "lastmsg": "Sounds good 😂😂😂"},
    {
      "img": "oval5.png",
      "name": "Ruhanika",
      "lastmsg": "I heard this is a good movie, s…",
    },
    {
      "img": "oval6.png",
      "name": "Anup",
      "lastmsg": "See you on the next meeting!",
    },
    {"img": "oval7.png", "name": "Priyank", "lastmsg": "Sounds good 😂😂😂"},
    {
      "img": "oval8.png",
      "name": "Aarambhi",
      "lastmsg": "I heard this is a good movie, s…",
    },
    {
      "img": "oval1.png",
      "name": "Raahi",
      "lastmsg": "See you on the next meeting!",
    },
    {"img": "oval2.png", "name": "Rukmani", "lastmsg": "Sounds good 😂😂😂"},
    {
      "img": "oval3.png",
      "name": "Ayush",
      "lastmsg": "I heard this is a good movie, s…",
    },
    {
      "img": "oval4.png",
      "name": "Akshita",
      "lastmsg": "See you on the next meeting!",
    },
    {"img": "oval5.png", "name": "Rocky", "lastmsg": "Sounds good 😂😂😂"},
    {
      "img": "oval6.png",
      "name": "Aditya",
      "lastmsg": "I heard this is a good movie, s…",
    },
    {
      "img": "oval7.png",
      "name": "Rohit",
      "lastmsg": "See you on the next meeting!",
    },
    {"img": "oval8.png", "name": "Ankita", "lastmsg": "Sounds good 😂😂😂"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 88,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(CupertinoIcons.back),
        ),
        title: Text(
          "priya_singh",
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add, color: Colors.white, size: 28),
          ),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 20),
              Container(
                height: 40,
                width: 380,
                decoration: BoxDecoration(
                  color: Color(0XFF262626),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Color(0XFF8E8E93),
                      ),
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ],
          ),

          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                      "assets/images/${arrcontent[index]["img"].toString()}",
                    ),
                  ),
                  title: Text(
                    arrcontent[index]["name"].toString(),
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    arrcontent[index]["lastmsg"].toString(),
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.camera,
                      color: Color(0XFF8E8E93),
                      size: 25,
                    ),
                  ),
                );
              },
              itemCount: arrcontent.length,
            ),
          ),
        ],
      ),
    );
  }
}
