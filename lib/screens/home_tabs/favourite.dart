import 'package:flutter/material.dart';

class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, position) {
        return Card(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                _draw_author_row(),
                SizedBox(height: 20,),
                _draw_news_item_row(),
              ],
            ),
          ),
        );
      },
      itemCount: 10,
    );
  }

  Widget _draw_author_row() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 16),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: ExactAssetImage('assets/images/2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ahmed Reda",
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 19,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      "15 Min  ",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 18,
                        height: 1.25,
                      ),
                    ),
                    Text(
                      "Life Style",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.bookmark_border),
              onPressed: () {},
            )
          ],
        ),
      ],
    );
  }

  Widget _draw_news_item_row() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 16,),
          height: 130,
          width: 130,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: ExactAssetImage("assets/images/3.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                "Tech new about smart phones",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Tech new about smart phones lorem ipsum Tech new about smart phones lorem ipsum",
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 18,
                  height: 1.25,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


