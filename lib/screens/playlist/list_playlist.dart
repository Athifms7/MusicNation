// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:musicnation/screens/header.dart';
import 'package:musicnation/screens/search_screen.dart';

class ListPlaylist extends StatelessWidget {
  const ListPlaylist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Header(
            name: 'PLAYLISTS', icon: Icons.search, className: SearchScreen()),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color.fromRGBO(26, 29, 43, 1),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Stack(children: [
                Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://img.freepik.com/premium-vector/favourite-playlist-icon-songs-music-player-playlist-logo-vector-ui-icon-neumorphic-ui-ux-white-user-interface-web-button_399089-2894.jpg?w=740'),
                          fit: BoxFit.fill)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 185, left: 170),
                  child: IconButton(
                      color: Colors.redAccent,
                      onPressed: () {},
                      icon: Icon(
                        Icons.play_circle_filled_sharp,
                        size: 80,
                      )),
                )
              ]),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) => SongList(),
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 5,
                  ),
                  itemCount: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SongList extends StatelessWidget {
  const SongList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        height: 90,
        child: Card(
          color: const Color.fromRGBO(31, 37, 61, 1),
          child: Padding(
            padding: const EdgeInsets.only(top: 7),
            child: ListTile(
              leading: Container(
                width: 60,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Image.network(
                  'https://images.macrumors.com/t/oXm0mS5xSk3qsnYmUHxbKrlvgIM=/800x0/article-new/2018/04/apple-music-icon-for-ios-100594580-orig-250x250.jpg?lossy',
                ),
              ),
              title: const Text(
                'Payphone',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              subtitle: const Text(
                'maroon 5',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              // trailing: Row(
              //   mainAxisSize: MainAxisSize.min,
              //   children: [
              //     IconButton(
              //       onPressed: () {},
              //       icon: const Icon(
              //         Icons.favorite_border,
              //         color: Colors.white,
              //       ),
              //     ),
              //     IconButton(
              //       onPressed: () {},
              //       icon: const Icon(
              //         Icons.playlist_add,
              //         color: Colors.white,
              //       ),
              //     ),
              //   ],
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
