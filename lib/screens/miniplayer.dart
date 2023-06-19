// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:musicnation/screens/audio_player.dart';

class MiniPlayer extends StatefulWidget {
  const MiniPlayer({Key? key});

  @override
  State<MiniPlayer> createState() => _MiniPlayerState();
}

class _MiniPlayerState extends State<MiniPlayer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return AudioPlayer();
          },
        ));
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(21, 36, 95, 1),
              Color.fromRGBO(25, 1, 1, 1),
            ],
          ),
        ),
        height: 110,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://cdn.dribbble.com/users/14696/screenshots/5460103/media/5c4a1ca5846dc94b3b87383cd501d5a5.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Column(
                          children: [
                            Text(
                              'PayPhone',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(
                                'maroon5',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.skip_previous)),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.play_arrow)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.skip_next))
                    ],
                  ),
                  SizedBox(
                    width: 250,
                    child: ProgressBar(
                      barHeight: 5,
                      progressBarColor: Colors.white,
                      bufferedBarColor: Colors.white30,
                      baseBarColor: Colors.white10,
                      thumbColor: Colors.redAccent,
                      timeLabelTextStyle: TextStyle(color: Colors.white),
                      progress: Duration(milliseconds: 1000),
                      buffered: Duration(milliseconds: 2000),
                      total: Duration(milliseconds: 5000),
                      onSeek: (duration) {
                        print('User selected a new time: $duration');
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
