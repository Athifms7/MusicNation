// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:musicnation/screens/header.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Header(name: 'PLAYLIST', icon: Icons.add_box_outlined)),
      body: Container(
        width: double.infinity,
        height: 603,
        color: Color.fromRGBO(26, 29, 43, 1),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  PlayListCard(playListName: 'abc'),
                  SizedBox(
                    width: 2,
                  ),
                  PlayListCard(playListName: 'abc'),
                ],
              ),
              Row(
                children: [
                  PlayListCard(playListName: 'abc'),
                  SizedBox(
                    width: 2,
                  ),
                  PlayListCard(playListName: 'abc'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PlayListCard extends StatelessWidget {
  String? playListName;
  PlayListCard({
    super.key,
    required this.playListName,
  });

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(
          width: 180,
          height: 180,
          child: Card(
            color: Colors.blue,
            elevation: 20,
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Image.network(
                    'https://img.freepik.com/premium-vector/favourite-playlist-icon-songs-music-player-playlist-logo-vector-ui-icon-neumorphic-ui-ux-white-user-interface-web-button_399089-2894.jpg?w=740',
                    fit: BoxFit.fill,
                  ),
                  Row(children: [
                    Container(
                      width: 120,
                      height: 20,
                      // color: Colors.amber,
                      child: Center(child: Text('$playListName')),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.delete),
                    ),
                  ]),
                ],
              ),
            ]),
          )),
    ]);
  }
}
