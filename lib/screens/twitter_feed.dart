import 'package:flutter/material.dart';
import 'package:news_app/shared_ui/Navigation_drawer.dart';

class TwitterFeed extends StatefulWidget {
  @override
  _TwitterFeedState createState() => _TwitterFeedState();
}


class _TwitterFeedState extends State<TwitterFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Twitter Feeds"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      drawer: NavigationDrawer(),
      body: ListView.builder(
        itemBuilder: (context, position) {
          return Column(
            children: [
              _Draw_Card(),
            ],
          );
        },
        itemCount: 15,
      ),
    );
  }

  Widget _Draw_Card() {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10, top: 5, bottom: 5),
      child: Card(
        child: Column(
          children: [
            _draw_user_time_detials(),
            draw_twet_text(),
            draw_line_divider(),
            draw_tweet_buttons(),
          ],
        ),
      ),
    );
  }

  Widget _draw_user_time_detials() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage("assets/images/4.jpg"),
                  fit: BoxFit.cover),
              shape: BoxShape.circle,
            ),
            margin: EdgeInsets.only(
              right: 16,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Ahmed Reda Sa3eed ",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "@ahmedreda",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Friday 27/10/2010 - 10:45 PM",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget draw_twet_text() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15.0,
        right: 15,
        bottom: 15,
      ),
      child: Text(
        "im good at playing football and playin music in my computer",
        style: TextStyle(
          color: Colors.black,
          fontSize: 17,
          height: 1.5,
        ),
      ),
    );
  }

  Widget draw_line_divider() {
    return Container(
      color: Colors.grey.shade300,
      height: 0.5,
    );
  }

  Widget draw_tweet_buttons() {
    return Padding(
      padding: const EdgeInsets.only(right:10,left:10,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                  icon: Icon(Icons.repeat),
                  color: Colors.amber,
                  onPressed: () {}),
              Text(
                "25",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  "Share",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 17,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Open",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 17,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
