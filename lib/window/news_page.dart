import 'package:day23_news_feed/window/details_page.dart';
import 'package:flutter/material.dart';

import '../article_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                padding: const EdgeInsets.only(left: 0),
                alignment: Alignment.bottomLeft,
                onPressed: () {},
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
                padding: const EdgeInsets.only(top: 60, bottom: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "August 15, 2015".toUpperCase(),
                        style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.black26),
                      ),
                      const Divider(
                        endIndent: 50,
                        thickness: 1,
                        color: Colors.black26,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "Business".toUpperCase(),
                          style: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                              color: Colors.black87,
                              letterSpacing: 4),
                        ),
                      ),
                    ]),
              ),
              Expanded(
                child: ScrollConfiguration(
                  behavior: const MaterialScrollBehavior()
                      .copyWith(overscroll: false),
                  child: ListView.builder(
                      padding: const EdgeInsets.only(),
                      itemCount: interestingArticles.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsPage(
                                        news: interestingArticles[index])));
                          },
                          child: Container(
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 20, right: 30),
                              child: Column(
                                children: [
                                  Text(
                                    interestingArticles[index].title,
                                    style: const TextStyle(
                                        fontSize: 16,
                                        color: Colors.black87,
                                        fontFamily: "LibreBasker",
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Text(
                                      interestingArticles[index].article,
                                      maxLines: 3,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.black54,
                                        fontFamily: "LibreBasker",
                                      ),
                                    ),
                                  )
                                ],
                              )),
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
