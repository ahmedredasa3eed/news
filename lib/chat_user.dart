import 'package:flutter/material.dart';
import 'package:news_app/chat_user_list.dart';
import 'package:news_app/models/chat_user.dart';

import 'chat_details.dart';

class ChatUsers extends StatefulWidget {
  @override
  _ChatUsersState createState() => _ChatUsersState();
}

class _ChatUsersState extends State<ChatUsers> {

  List<ChatUser> user = [
    ChatUser(name: "Ahmed Reda", image: "assets/images/2.jpg", chatText: "hello", is_seen: true, time: "Now"),
    ChatUser(name: "Asmaa Rageh", image: "assets/images/3.jpg", chatText: "hello", is_seen: false, time: "Now"),
    ChatUser(name: "Asmaa Rageh", image: "assets/images/3.jpg", chatText: "hello", is_seen: false, time: "Now"),
    ChatUser(name: "Asmaa Rageh", image: "assets/images/3.jpg", chatText: "hello", is_seen: false, time: "Now"),
    ChatUser(name: "Asmaa Rageh", image: "assets/images/3.jpg", chatText: "hello", is_seen: false, time: "Now"),
    ChatUser(name: "Asmaa Rageh", image: "assets/images/3.jpg", chatText: "hello", is_seen: false, time: "Now"),
    ChatUser(name: "Amira Reda", image: "assets/images/4.jpg", chatText: "hello", is_seen: false, time: "Now"),
    ChatUser(name: "Mahmoud Zaher", image: "assets/images/bg.jpg", chatText: "hello", is_seen: true, time: "Now"),
    ChatUser(name: "Saeed Alahmari", image: "assets/images/2.jpg", chatText: "hello", is_seen: true, time: "Now"),
    ChatUser(name: "Saeed Alahmari", image: "assets/images/2.jpg", chatText: "hello", is_seen: true, time: "Now"),
    ChatUser(name: "Saeed Alahmari", image: "assets/images/2.jpg", chatText: "hello", is_seen: true, time: "Now"),
    ChatUser(name: "Saeed Alahmari", image: "assets/images/2.jpg", chatText: "hello", is_seen: true, time: "Now"),
    ChatUser(name: "Saeed Alahmari", image: "assets/images/2.jpg", chatText: "hello", is_seen: true, time: "Now"),
    ChatUser(name: "Saeed Alahmari", image: "assets/images/2.jpg", chatText: "hello", is_seen: true, time: "Now"),
    ChatUser(name: "Saeed Alahmari", image: "assets/images/2.jpg", chatText: "hello", is_seen: true, time: "Now"),
    ChatUser(name: "Saeed Alahmari", image: "assets/images/2.jpg", chatText: "hello", is_seen: true, time: "Now"),
    ChatUser(name: "Saeed Alahmari", image: "assets/images/2.jpg", chatText: "hello", is_seen: true, time: "Now"),
    ChatUser(name: "Saeed Alahmari", image: "assets/images/2.jpg", chatText: "hello", is_seen: true, time: "Now"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 60,
                left: 16,
                right: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Chats",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.pink.shade50,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.pink,
                          ),
                          Text(
                            "New",
                            style: TextStyle(fontSize: 17, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: Colors.grey.shade600,
                  ),
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.grey.shade50,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context) => ChatDetails()));
              },
              child: ListView.builder(
                itemBuilder: (context, position) {
                  return ChatUserList(
                    image: user[position].image,
                    name: user[position].name,
                    chatText: user[position].chatText,
                    time: user[position].time,
                    is_seen: user[position].is_seen,
                  );
                },
                itemCount: user.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
              ),
            ),
          ],
        ),
      ),
    );
  }


}
