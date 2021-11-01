import 'content.dart';

class PostList{
  final String kind;
  final String nextPageToken;
  final List<Content> items;

  PostList({
    required this.kind,
    required this.nextPageToken,
    required this.items,
  }
  );

  PostList.fromJson(Map<String,dynamic> _jsonData, List<Content> _posts):
    kind = _jsonData['kind'],
    nextPageToken = _jsonData['nextPageToken'],
    items = _posts;
}