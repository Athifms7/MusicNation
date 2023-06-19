// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';

class AudioPlayer extends StatelessWidget {
  const AudioPlayer({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color.fromRGBO(26, 29, 43, 1),
            Color.fromRGBO(116, 33, 33, 0)
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Column(children: [
                SizedBox(
                  width: double.infinity,
                  height: 100,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Padding(
                            padding:
                                const EdgeInsets.only(right: 5, bottom: 10),
                            child: const Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.white,
                            ),
                          )),
                      const SizedBox(
                        width: 60,
                      ),
                      const Column(
                        children: [
                          Text(
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                              'Payphone'),
                          Text(
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                              'maroon5')
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.white,
                          )),
                      Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.playlist_add,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  height: 300,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://cdn.dribbble.com/users/14696/screenshots/5460103/media/5c4a1ca5846dc94b3b87383cd501d5a5.png'),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  width: 300,
                  child: ProgressBar(
                    barHeight: 10,
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
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.repeat,
                          size: 35,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.skip_previous,
                          size: 35,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.play_arrow_sharp,
                          size: 45,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.skip_next,
                          size: 35,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.shuffle,
                          size: 35,
                          color: Colors.white,
                        ))
                  ],
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
