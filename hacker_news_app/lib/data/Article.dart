class Article {

  final String title;
  final int numberComments;

  Article(this.title, this.numberComments);

  static List<Article> fakeData() {

    var fakeList = List<Article>();
    for(var i = 0; i < 50; i++) {
      fakeList.add(Article("Article num $i", i * 13));
    }

    return fakeList;
  }

}


