import 'package:flutter/material.dart';
import 'package:news_app/models/nav_drawer_routes.dart';
import 'package:news_app/main.dart';
import 'package:news_app/screens/facebook_feed.dart';
import 'package:news_app/screens/headline_news.dart';
import 'package:news_app/screens/home_screen.dart';
import 'package:news_app/screens/instagram_feed.dart';
import 'package:news_app/screens/twitter_feed.dart';



class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {

  List<NavDrawerRouter> NavigationRoutes = [
    NavDrawerRouter("Home Page", ()=> HomeScreen()),
    NavDrawerRouter("Headline News", ()=> HeadlineNews()),
    NavDrawerRouter("Twitter Feeds", ()=> TwitterFeed()),
    NavDrawerRouter("Instagram Feeds", ()=> InstagranFeed()),
    NavDrawerRouter("Facebook Feeds", ()=> FacebookFeed()),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(20.0),

        child: ListView.builder(
          itemBuilder: (context , position){
            return ListTile(
              title: Text(NavigationRoutes[position].title),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: ()
              {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationRoutes[position].destination() ));
              },
            );
          },
          itemCount: NavigationRoutes.length,
        ),
      ),
    );
  }
}
