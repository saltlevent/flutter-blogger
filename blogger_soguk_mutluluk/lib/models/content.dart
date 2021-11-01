class Content{
  String kind;
  String id;
  String published;
  String updated;
  String url;
  String selfLink;
  String title;
  String content;
  Author author;

  Content({
    required this.kind,
    required this.id,
    required this.published,
    required this.updated,
    required this.url,
    required this.selfLink,
    required this.title,
    required this.content,
    required this.author
  });

  Content.fromJson(Map<String, dynamic> _jsonData):
    kind = _jsonData['kind'],
    id = _jsonData['id'],
    published = _jsonData['published'],
    updated = _jsonData['updated'],
    url = _jsonData['url'],
    selfLink = _jsonData['selfLink'],
    title = _jsonData['title'],
    content = _jsonData['content'],
    author = Author(id: _jsonData["author"]["displayName"], displayName: _jsonData["author"]["displayName"], url: _jsonData["author"]["url"]);

}

class Author{
  String id;
  String displayName;
  String url;

  Author({
    required this.id,
    required this.displayName,
    required this.url
  });
}