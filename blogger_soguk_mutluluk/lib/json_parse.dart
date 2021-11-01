import 'package:blogger_soguk_mutluluk/models/content.dart';
import 'package:blogger_soguk_mutluluk/models/post_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:provider/provider.dart';

class JsonParser extends ChangeNotifier{

  final String key= "your blogger apiv3 key here";
  Future<Content> fetchContent(String postId) async{
    var url = Uri.parse('https://www.googleapis.com/blogger/v3/blogs/5175624030382615009/posts/$postId?key=$key');

    Content _content;
    try{
      var response = await http.get(url);
      var data = json.decode(response.body);

      _content = Content.fromJson(data);
      return _content;

    } catch(e){
      return Future.error('Hata Oluştu $e');
    }
  }

  Future<PostList> fetchPostList() async{
    var url = Uri.parse('https://www.googleapis.com/blogger/v3/blogs/5175624030382615009/posts?key=AIzaSyDrW9LUpN1S6XfK7uE36_ujUaEP6hQHA-8');

    List<Content> _contents = [];
    try{
      var response = await http.get(url);
      var data = json.decode(response.body);

      for(final item in data['items']){
        _contents.add(Content.fromJson(item));
      }

      return PostList.fromJson(data, _contents);
    } catch(e){
      return Future.error('Hata Oluştu $e');
    }
  }
}