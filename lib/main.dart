import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trials/data/bookmarkModel.dart';

import 'ui/bookmarkListPage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<BookmarkModel>(create:(context)=> BookmarkModel(),child: App()));
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
            child: Scaffold(body: BookmarkListPage())));
  }
}
