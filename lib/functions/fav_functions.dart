import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:musicnation/model/favorite/fav_model.dart';
import 'package:musicnation/model/song_model.dart';

ValueNotifier<List<Songs>> favoriteListNotifier = ValueNotifier([]);

Future addToFav(Songs song) async {
  Box<FavModel> favdb = await Hive.openBox('fav_db');

  favoriteListNotifier.value.add(song);

  FavModel temp = FavModel(id: song.id);
  favdb.add(temp);
  favoriteListNotifier.notifyListeners();
}

Future removeFromFav(Songs song) async {
  favoriteListNotifier.value.remove(song);
  List<FavModel> templist = [];
  Box<FavModel> favdb = await Hive.openBox('fav_db');
  templist.addAll(favdb.values);
  for (var element in templist) {
    if (element.id == song.id) {
      var key = element.key;
      await favdb.delete(key);
      break;
    }
  }
  favoriteListNotifier.notifyListeners();
}
