// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:musicnation/functions/fav_functions.dart';
import 'package:musicnation/functions/fetch_songs.dart';
import 'package:musicnation/screens/favourite/heart_icon.dart';

import 'package:musicnation/screens/header.dart';
import 'package:musicnation/screens/miniplayer.dart';
import 'package:musicnation/screens/mostly_played.dart';
import 'package:musicnation/screens/playlist/add_to_playlist.dart';
import 'package:musicnation/screens/recently_played.dart';
import 'package:musicnation/screens/search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Header(
            name: 'ALL SONGS', icon: Icons.search, className: SearchScreen()),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color.fromRGBO(26, 29, 43, 1),
        child: Column(
          children: [
            RecentlyPlayed(text: 'Recently Played'),
            MostlyPlayed(text: 'Mostly Played'),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => SongList(
                  index: index,
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 5,
                ),
                itemCount: allSongs.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SongList extends StatelessWidget {
  SongList({Key? key, required this.index}) : super(key: key);

  int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.of(context).push(MaterialPageRoute(
        //   builder: (context) {
        //     return AudioPlayer();
        //   },
        // ));
        showBottomSheet(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20), bottom: Radius.circular(20))),
          context: context,
          builder: (context) {
            return MiniPlayer();
          },
        );
      },
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
              title: Text(
                allSongs[index].songname.toString(),
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              subtitle: Text(
                allSongs[index].artist.toString(),
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  HeartIcon(
                      currentSong: allSongs[index],
                      isFav:
                          favoriteListNotifier.value.contains(allSongs[index])),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return AddToPlaylist();
                        },
                      ));
                    },
                    icon: const Icon(
                      Icons.playlist_add,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MostlyPlayed extends StatelessWidget {
  final String text;
  const MostlyPlayed({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return MostlyScreen();
          },
        ));
      },
      child: Card(
        color: const Color.fromRGBO(31, 37, 61, 1),
        child: ListTile(
          title: Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class RecentlyPlayed extends StatelessWidget {
  final String text;
  const RecentlyPlayed({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return RecentlyScreen();
          },
        ));
      },
      child: Card(
        color: const Color.fromRGBO(31, 37, 61, 1),
        child: ListTile(
          title: Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
