import 'package:flutter/material.dart';
import 'package:news_app/shared_ui/Navigation_drawer.dart';

class InstagranFeed extends StatefulWidget {
  @override
  _InstagranFeedState createState() => _InstagranFeedState();
}

class _InstagranFeedState extends State<InstagranFeed> {

  List<int> fav_ids = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fav_ids = [1];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram Feeds"),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Column(
                    children: [
                      _draw_user_date_info(position),
                      _draw_card_text(),
                      _draw_image_media(),
                      _draw_buttons(),
                    ],
                  ),
                ),
              )
            ],
          );
        },
        itemCount: 10,
      ),
    );
  }



  Widget _draw_user_date_info(int position) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12.0,
        right: 12,
        top: 10,
        bottom: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage("assets/images/3.jpg"),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
                margin: EdgeInsets.only(
                  right: 16,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ahmed Reda",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Fri 12 May 2020 - 14:30",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.favorite),

                onPressed: () {
                  setState(() {
                    if( fav_ids.contains(position))
                    {
                      fav_ids.remove(position);
                    }
                    else{
                      fav_ids.add(position);
                    }
                  });
                },

                color: (fav_ids.contains(position)) ? Colors.red : Colors.grey,
              ),
              Transform.translate(
                offset: Offset(-8, 0),
                child: Text(
                  "25",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _draw_card_text() {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16, top: 8, bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            children: [
              Text(
                "We also talk about many and many algorithm in future We also talk about many and many algorithm in future",
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 18,
                  height: 1.25,
                ),
              ),
              SizedBox(height: 80,),
              Text(
                "#development #Coding #future_academy",
                style: TextStyle(
                  color: Colors.amber.shade600,
                  fontSize: 17,
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }

  Widget _draw_image_media() {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width,
      height: MediaQuery
          .of(context)
          .size
          .height * 0.3,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage("assets/images/4.jpg"),
            fit: BoxFit.cover,
          )),
    );
  }

  Widget _draw_buttons() {
    return Padding(
      padding: const EdgeInsets.only(
        right: 10,
        left: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                "10 COMMENTS",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 17,
                ),
              ),
            ],
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  "SHARE",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 17,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "OPEN",
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
