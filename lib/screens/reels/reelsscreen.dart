import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/reels_card.dart';

class Reelsscreen extends StatefulWidget {
  const Reelsscreen({super.key});

  @override
  State<Reelsscreen> createState() => _ReelsscreenState();
}

class _ReelsscreenState extends State<Reelsscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black45, body: ReelsCard());
  }
}
