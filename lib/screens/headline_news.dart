import 'package:flutter/material.dart';
import 'package:news_app/shared_ui/Navigation_drawer.dart';
import 'home_tabs/favourite.dart';
import 'home_tabs/popular.dart';

class HeadlineNews extends StatefulWidget {
  @override
  _HeadlineNewsState createState() => _HeadlineNewsState();
}

class _HeadlineNewsState extends State<HeadlineNews> with SingleTickerProviderStateMixin {

  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: 3, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Headline News"),
        centerTitle: false,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: _controller,
          tabs: [
            Tab(
              text: "Headline",
            ),
            Tab(
              text: "Popular",
            ),
            Tab(
              text: "Favourites",
            ),
          ],

        ),
      ),
      drawer: NavigationDrawer(),
      body: Center(
        child: TabBarView(
          controller: _controller,
          children: [
            Favourite(),
            Popular(),
            Favourite(),
          ],
        ),
      ),
    );
  }
}
