import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:trials/data/bookmark.dart';
import 'package:trials/resources/constants.dart';


class BookmarkAPI {


  Future<List<Bookmark>> fetchBookmarks() async {
    final response = await http.get(constants.url);

    if (response.statusCode == 200) {
      List<Bookmark> bookmarks = List();
      final jsonBookmarks = json.decode(response.body)['articles'];
      for (var jsonBookmark in jsonBookmarks) {
        bookmarks.add(Bookmark.fromJson(jsonBookmark));
      }
      return bookmarks;
    } else {
      throw Exception('Failed to load bookmark');
    }

  }
}
