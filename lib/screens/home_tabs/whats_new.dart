import 'package:flutter/material.dart';
import 'package:news_app/screens/single_post.dart';

class WhatNew extends StatefulWidget {
  @override
  _WhatNewState createState() => _WhatNewState();
}

class _WhatNewState extends State<WhatNew> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white38,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _draw_header(),
            _draw_card(),
          ],
        ),
      ),
    );
  }

  Widget _draw_header() {
    TextStyle _header_title = TextStyle(
      fontSize: 22,
      color: Colors.white,
      fontWeight: FontWeight.w700,
    );
    TextStyle _header_desc = TextStyle(
      fontSize: 13,
      color: Colors.white,
    );

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .25,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage("assets/images/4.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 12, left: 12),
            child: Text(
              "All news about Joe Bayden is here Podcast it now",
              style: _header_title,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12, left: 12),
            child: Text(
              "Discover news now bit by bite onluy on sma",
              style: _header_desc,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _draw_card() {

    return Container(
      color: Colors.white54,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _draw_head_title("Top Stories : "),
          _draw_sigle_row(),
          _draw_sigle_row(),
          _draw_sigle_row(),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _draw_head_title("Recent Updates : "),
                _draw_recent_updates_card(),
                _draw_recent_updates_card(),
                _draw_recent_updates_card(),
                _draw_recent_updates_card(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _draw_sigle_row() {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Card(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      height: 120,
                      width: 120,
                      child: Image(
                        image: ExactAssetImage("assets/images/bg.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi every One is here to do some actions on our saudi arabia",
                            maxLines: 2,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              height: 1.5,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("this is a text"),
                              Row(
                                children: [
                                  Icon(Icons.timelapse),
                                  Text("23/1/2020"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: (){
        Navigator.pop(context);
        Navigator.push(context, MaterialPageRoute(builder: (context) => SinglePost() ));
      },
    );
  }

  Widget _draw_head_title(String _heading) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 10),
      child: Text(
        _heading,
        style: TextStyle(
          color: Colors.black54,
          fontWeight: FontWeight.bold,
          fontSize: 17,
        ),
      ),
    );
  }

  Widget _draw_recent_updates_card() {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.2,
              child: Image(
                image: ExactAssetImage("assets/images/3.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.3,
              height: 25,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                "Sport",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,

                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text(
              "First App news in middle east",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 22,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom:8),
                  child: Icon(
                    Icons.timer,
                    color: Colors.grey.shade900,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:8),
                  child: Text(
                    "15 min",
                    style: TextStyle(color: Colors.grey.shade900, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
