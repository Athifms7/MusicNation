// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:musicnation/screens/playlist/playlist_screen.dart';

class AddToPlaylist extends StatelessWidget {
  const AddToPlaylist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: HeaderAddToPlaylist(
          name: 'ADD TO PLAYLIST',
          icon: Icons.add_box_outlined,
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color.fromRGBO(26, 29, 43, 1),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  PlayListCard(playListName: 'cde'),
                  SizedBox(
                    width: 2,
                  ),
                  PlayListCard(playListName: 'acc')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderAddToPlaylist extends StatelessWidget {
  final String? name;
  final IconData? icon;
  // final Widget? className; // Optional parameter with default value of null

  HeaderAddToPlaylist({
    Key? key,
    required this.name,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 150,
      backgroundColor: Color.fromRGBO(1, 7, 29, 1.0),
      title: Text('$name'),
      actions: [
        IconButton(
            onPressed: () {
              showModalBottomSheet(
                backgroundColor: Color.fromRGBO(1, 7, 29, 1.0),
                context: context,
                builder: (context) {
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          'Enter the name for playlist',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            color: Colors.white,
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Enter Text',
                              ),
                            ),
                          ),
                        ),
                        ElevatedButton(onPressed: () {}, child: Text('create'))
                      ],
                    ),
                  );
                },
              );
            },
            icon: Icon(icon))
      ],
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
