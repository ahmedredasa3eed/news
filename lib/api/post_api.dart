import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:news_app/models/post_model.dart';

class PostAPI{

  Future<List<PostModel>> get_posts() async {

    List<PostModel> posts;
    String postsUrl = "0";

    var response = await http.get(postsUrl);

    if(response.statusCode == 200){
      //TODO fetch posts

      var jsonData = jsonDecode(response.body);
      var data = jsonData['data'];

      for ( var item in data){
        PostModel post = new PostModel(id: item['id'].toString(), title: item['title'].toString(), avatar: item['avatar'].toString());
        posts.add(post);
      }

    }
    return posts;
  }
}

