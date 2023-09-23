import 'package:day23_news_feed/window/news_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//https://dribbble.com/shots/2242388-Minimal-news-feed-reader-v-3/attachments/9203463?mode=media

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
  ));

  runApp(const MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}
