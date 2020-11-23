import 'package:flutter/material.dart';

class ChatUser{

  String name;
  String image;
  String chatText;
  bool is_seen;
  String time;


  ChatUser({@required this.name, @required this.image, @required this.chatText, @required this.is_seen, @required this.time});

}