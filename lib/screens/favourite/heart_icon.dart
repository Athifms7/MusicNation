import 'package:flutter/material.dart';
import 'package:musicnation/functions/fav_functions.dart';
import 'package:musicnation/model/song_model.dart';

class HeartIcon extends StatefulWidget {
  HeartIcon({super.key, required this.currentSong, required this.isFav});

  Songs currentSong;
  bool isFav;

  @override
  State<HeartIcon> createState() => _HeartIconState();
}

class _HeartIconState extends State<HeartIcon> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          if (widget.isFav == true) {
            widget.isFav = false;
            removeFromFav(widget.currentSong);
          } else {
            widget.isFav = true;

            addToFav(widget.currentSong);
            print('add');
          }
        });
      },
      child: (widget.isFav)
          ? Icon(
              Icons.favorite,
              color: Colors.red,
            )
          : Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
    );
  }
}
