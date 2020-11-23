import 'package:flutter/material.dart';

class SinglePost extends StatefulWidget {
  @override
  _SinglePostState createState() => _SinglePostState();
}

class _SinglePostState extends State<SinglePost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            floating: true,
            pinned: true,
            primary: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage("assets/images/3.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, position) {
                if (position == 0) {
                  return _draw_post_details();
                }

                if (position >= 1 && position < 14) {

                  Text("All Comments",
                    style: TextStyle(
                      color:Colors.black,
                      fontSize: 22,
                    ),
                  );

                return _draw_post_comments();
                } else {
                return _draw_new_comment();
                }
              },
              childCount: 15,
            ),
          ),
        ],
      ),
    );
  }

  Widget _draw_post_details() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        child: Text(
          "First App news in middle east First App news in middle east First App news in middle east First App news in middle east First App news in middle east First App news in middle east First App news in middle east First App news in middle east First App news in middle east First App news in middle east",
          style: TextStyle(
            color: Colors.grey.shade700,
            fontSize: 18,
            height: 1.5,
          ),
        ),
      ),
    );
  }

  Widget _draw_post_comments() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: ExactAssetImage("assets/images/2.jpg"),
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ahmed Reda",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "15 Hours",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "First App news in middle east First App news in middle east First App news in middle east First App news in middle east",
            style: TextStyle(
              color: Colors.grey.shade700,
            ),
          ),
        ],
      ),
    );
  }

  Widget _draw_new_comment() {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width,
      color: Colors.grey.shade300,
      child: Row(
        children: [
          Flexible(
            child: TextField(
              decoration: InputDecoration(
                isCollapsed: true,
                hintText: "Enter your comment",
                contentPadding: EdgeInsets.only(
                  left: 24, right: 8, bottom: 16, top: 16,),
                fillColor: Colors.grey.shade300,
                filled: true,
                focusColor: Colors.red,
              ),
            ),
          ),
          FlatButton(
            child: Text(
              "Send",
              style: TextStyle(
                color: Colors.red,
                fontSize: 17,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
