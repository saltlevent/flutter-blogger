import 'package:blogger_soguk_mutluluk/content_page.dart';
import 'package:blogger_soguk_mutluluk/models/post_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:provider/provider.dart';

import 'json_parse.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return FutureProvider<PostList>(
        catchError: (error,stack){
          print("hataaaa" + error.toString());
          return PostList(kind: "-", nextPageToken: "-", items: []);
          },
        create: (content) => JsonParser().fetchPostList(),
        initialData: PostList(
            kind: "-",
            nextPageToken: "-",
            items: []
        ),
        child: Consumer<PostList>(builder: (context, PostList _posts, child) {
          return Scaffold(
              appBar: AppBar(title: const Text("Main Page"),),
              body: RefreshIndicator(
                onRefresh: (){return context.read<JsonParser>().fetchPostList();},
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(5),
                  child: _posts.items.length<=1? Column(
                    children: const [
                      CircularProgressIndicator(),
                      Text("Loading...")
                    ],
                  ):ListView.builder(
                      itemCount: _posts.items.length,
                      itemBuilder: (BuildContext context, int index){
                        return Container(
                          margin: const EdgeInsets.all(1),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(width: 2,color: Colors.black12)),
                          child: TextButton(
                            style: TextButton.styleFrom(padding: EdgeInsets.all(20)),
                            child: Text(_posts.items[index].title),
                            onPressed: (){
                              Navigator.push(
                                  context,
                              MaterialPageRoute(builder: (context) => ContentPage(postId: _posts.items[index].id)));
                            },),
                        );
                      }
                  )
                ),
              )
          );
        }
        )
    );
  }
}
