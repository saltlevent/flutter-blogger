
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:provider/provider.dart';

import 'json_parse.dart';
import 'models/content.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({Key? key, required this.postId}) : super(key: key);
  final String postId;

  @override
  Widget build(BuildContext context) {
    return FutureProvider<Content>(
        create: (content) => JsonParser().fetchContent(postId),
        initialData: Content(url: "-",
            id: "-",
            updated: "-",
            title: "--",
            published: "-",
            kind: "-",
            content: "-",
            author: Author(id: "-", url: "-", displayName: "-"),
            selfLink: "-"),
        child: Consumer<Content>(builder: (context, Content cont, child) {
          return Scaffold(
              appBar: AppBar(title: Text(cont.title),),
              body: cont.id=="-"?const Center(child: CircularProgressIndicator(),):Container(
                margin: const EdgeInsets.all(5),
                child: ListView(
                    children: [
                      Container(
                          decoration: BoxDecoration(border: Border.all(color: Colors.black12,width: 2),borderRadius: const BorderRadius.vertical(top: Radius.circular(10)), color: const Color(0xfffffaff),),
                          padding: const EdgeInsets.all(8),
                          child: Html(data: cont.content, onLinkTap: (url, context, code, type) {
                            print(url);
                          },)
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)), color: Colors.black12,),
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          children: [
                            Text("Tarih:" + cont.updated),
                            const Spacer(),
                            Text(cont.author.displayName, style: const TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ]),
              )
          );
        }
        )
    );
  }
}