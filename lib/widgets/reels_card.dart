import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ReelsCard extends StatefulWidget {
  const ReelsCard({super.key});

  @override
  State<ReelsCard> createState() => _ReelsCardState();
}

class _ReelsCardState extends State<ReelsCard> {
  VideoPlayerController? videoPlayerController;

  int currentVideo = 0;

  var Reels = [
    "assets/videos/vid1.mp4",
    "assets/videos/vid2.mp4",
    "assets/videos/vid3.mp4",
    "assets/videos/vid4.mp4",
    "assets/videos/vid5.mp4",
    "assets/videos/vid6.mp4",
    "assets/videos/vid7.mp4",
    "assets/videos/vid8.mp4",
    "assets/videos/vid9.mp4",
  ];

  @override
  void initState() {
    super.initState();
    initialize();
  }

  void initialize() async {
    await videoPlayerController?.dispose();

    videoPlayerController = VideoPlayerController.asset(Reels[currentVideo]);

    await videoPlayerController!.initialize();

    videoPlayerController!
      ..setLooping(true)
      ..play();

    setState(() {});
  }

  void changeReel(bool isNext) {
    if (isNext) {
      currentVideo = (currentVideo + 1) % Reels.length;
    } else {
      currentVideo = (currentVideo - 1 + Reels.length) % Reels.length;
    }
    initialize();
  }

  @override
  void deactivate() {
    videoPlayerController?.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    videoPlayerController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (videoPlayerController != null &&
              videoPlayerController!.value.isInitialized)
            Center(
              child: GestureDetector(
                onVerticalDragEnd: (drag) {
                  if (drag.velocity.pixelsPerSecond.dy > 0) {
                    changeReel(false);
                  } else if (drag.velocity.pixelsPerSecond.dy < 0) {
                    changeReel(true);
                  }
                },
                onTap: () {
                  if (videoPlayerController!.value.isPlaying) {
                    videoPlayerController!.pause();
                  } else {
                    videoPlayerController!.play();
                  }
                },
                child: AspectRatio(
                  aspectRatio: videoPlayerController!.value.aspectRatio,
                  child: VideoPlayer(videoPlayerController!),
                ),
              ),
            )
          else
            const CircularProgressIndicator(color: Colors.black26),
          const Positioned(
            top: 60,
            right: 18,
            child: Icon(
              Icons.linked_camera_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),

          Positioned(
            bottom: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        height: 140,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: const LinearGradient(
                            colors: [
                              Colors.purple,
                              Colors.red,
                              Colors.orange,
                              Colors.yellow,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),

                          border: Border.all(width: 3, color: Colors.red),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/image13.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ruhi_singh",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "mere dil khushi se jhume",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(width: 20),

                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    "Follow",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),

                const SizedBox(width: 26),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 2, color: Colors.white),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/image13.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 450,
            right: 15,
            child: Column(
              children: [
                Column(
                  children: [
                    const Icon(
                      Icons.favorite_outline_rounded,
                      color: Colors.white,
                      size: 35,
                    ),
                    Text(
                      "14K",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                Column(
                  children: [
                    const Icon(
                      Icons.mode_comment_outlined,
                      color: Colors.white,
                      size: 35,
                    ),

                    Text(
                      "100",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                Column(
                  children: [
                    const Icon(
                      Icons.send_outlined,
                      color: Colors.white,
                      size: 35,
                    ),

                    Text(
                      "202k",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),
                const Icon(
                  Icons.more_vert_sharp,
                  size: 30,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
