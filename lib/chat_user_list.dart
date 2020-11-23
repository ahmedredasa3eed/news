import 'package:flutter/material.dart';

import 'chat_details.dart';

class ChatUserList extends StatefulWidget {
  String name;
  String image;
  String chatText;
  bool is_seen;
  String time;

  ChatUserList(
      {@required this.name,
      @required this.image,
      @required this.chatText,
      @required this.is_seen,
      @required this.time});

  @override
  _ChatUserListState createState() => _ChatUserListState();
}

class _ChatUserListState extends State<ChatUserList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 8.0, right: 12, left: 12, bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(widget.image),
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      widget.chatText,
                      style: TextStyle(
                        color: (widget.is_seen)
                            ? Colors.grey.shade500
                            : Colors.black,
                        fontWeight: (widget.is_seen)
                            ? FontWeight.normal
                            : FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              widget.time,
              style: TextStyle(
                color: (widget.is_seen) ? Colors.grey : Colors.pink,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
