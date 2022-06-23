class Article {
  String? id, description, publishedAt, title;
  bool? isFave;
  Article(
      {this.title,
      this.id,
      this.description,
      this.publishedAt,
      this.isFave = false});
  getX() {}
  static Article fromJson(Map<String, dynamic> map) {
    Article article = Article(
        description: map["description"],
        title: map["title"],
        publishedAt: map["publishedAt"],
        id: (map["id"] == null) ? "" : map["id"],
        isFave: (map["isFave"] == null) ? false : map["isFave"]);
    return article;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "id": id,
      "description": description,
      "isFave": isFave,
      "title": title,
      "publishedAt": publishedAt
    };
    return map;
  }
}
