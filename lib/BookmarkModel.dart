import 'package:flutter/cupertino.dart';
import 'package:trials/Bookmark.dart';
import 'package:trials/Bookmark_API.dart';

enum State { initial, loading, loaded, error }

class BookmarkModel extends ChangeNotifier {
  List<Bookmark> _bookmarks = List();
  bool _dataLoaded = false;

  bool get dataLoaded => _dataLoaded;

  set dataLoaded(bool dataLoaded) {
    _dataLoaded = dataLoaded;
  }

  set bookmarks(List<Bookmark> value) {
    _bookmarks = value;
    dataLoaded=true;
    notifyListeners();
  }

  List<Bookmark> get bookmarks => _bookmarks;

  void getBookmarks() {
    BookmarkAPI bookmarkData = BookmarkAPI();
    bookmarkData.fetchBookmarks().then((value) {
      bookmarks = value;
    });
  }
}
