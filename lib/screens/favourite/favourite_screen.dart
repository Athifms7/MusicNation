import 'package:flutter/material.dart';
import 'package:musicnation/functions/fav_functions.dart';
import 'package:musicnation/screens/favourite/heart_icon.dart';
import 'package:musicnation/screens/header.dart';
import 'package:musicnation/screens/search_screen.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(26, 29, 43, 1),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Header(
              name: 'FAVOURITE SONGS',
              icon: Icons.add_box_outlined,
              className: SearchScreen()),
        ),
        body: ValueListenableBuilder(
            valueListenable: favoriteListNotifier,
            builder: (context, value, child) => (favoriteListNotifier
                    .value.isNotEmpty)
                ? Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height,
                    color: const Color.fromRGBO(26, 29, 43, 1),
                    child: ListView.separated(
                      itemBuilder: (context, index) => SongList(index: index),
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 5,
                      ),
                      itemCount: favoriteListNotifier.value.length,
                    ),
                  )
                : Center(
                    child: Text(
                      'No Favorites',
                      style: TextStyle(color: Colors.white),
                    ),
                  )));
  }
}

class SongList extends StatelessWidget {
  SongList({Key? key, required this.index});
  int index;

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
              title: Text(
                favoriteListNotifier.value[index].songname ?? 'unknown',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              subtitle: Text(
                favoriteListNotifier.value[index].artist ?? 'unknown',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  HeartIcon(
                      currentSong: favoriteListNotifier.value[index],
                      isFav: true),
                  IconButton(
                    onPressed: () {},
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
