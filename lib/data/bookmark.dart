class Bookmark {
  String description;
  String title;
  String urlToImage;
  String url;
  String content;

  Bookmark(
      {this.title, this.description, this.url, this.urlToImage, this.content});

  factory Bookmark.fromJson(Map<String, dynamic> json) {
  return Bookmark(
      title: json['title'],
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      content: json['content']
       );
  }
}
