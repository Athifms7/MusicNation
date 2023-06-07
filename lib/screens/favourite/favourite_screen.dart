// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:musicnation/screens/header.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Header(
            name: 'FAVOURITE SONGS',
            icon: Icons.add_box_outlined,
          )),
      body: Container(
          width: double.infinity,
          height: 603,
          color: Color.fromRGBO(26, 29, 43, 1),
          child: Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) => songList(),
                separatorBuilder: (context, index) => SizedBox(
                      height: 5,
                    ),
                itemCount: 20),
          )),
    );
  }
}

class songList extends StatelessWidget {
  const songList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        height: 90,
        child: Card(
          color: Color.fromRGBO(31, 37, 61, 1),
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
                    'https://images.macrumors.com/t/oXm0mS5xSk3qsnYmUHxbKrlvgIM=/800x0/article-new/2018/04/apple-music-icon-for-ios-100594580-orig-250x250.jpg?lossy'),
              ),
              title: Text(
                'Payphone',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              subtitle: Text('maroon 5',
                  style: TextStyle(color: Colors.white, fontSize: 15)),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.playlist_add,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
