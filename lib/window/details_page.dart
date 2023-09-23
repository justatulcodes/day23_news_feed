import 'package:day23_news_feed/article_data.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.news});

  final Article news;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ScrollConfiguration(
          behavior: const MaterialScrollBehavior().copyWith(overscroll: false),
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              IconButton(
                padding: const EdgeInsets.only(left: 0),
                alignment: Alignment.bottomLeft,
                onPressed: () {
                  Navigator.pop(context);
                },
                splashRadius: 1,
                icon: const Icon(
                  Icons.horizontal_rule_rounded,
                  color: Colors.grey,
                  size: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(),
                child: Text(
                  "back to menu".toUpperCase(),
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black26),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 10),
                child: Text(
                  news.title,
                  style: const TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w900,
                    color: Colors.black87,
                  ),
                ),
              ),
              Text(
                news.writer,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Colors.black54,
                    fontStyle: FontStyle.italic),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text(
                  news.article,
                  style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black54,
                      fontFamily: "LibreBasker",
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
