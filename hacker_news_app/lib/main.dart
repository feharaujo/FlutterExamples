import 'package:flutter/material.dart';
import 'package:hacker_news_app/data/article.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //List<Article> articles = Article.fakeData();
  //List<Article> articles = [];
  List<int> _ids = [
    22310813,
    22319383,
    22320114,
    22335738,
    22331804,
    22310516,
    22326731,
    22323080,
    22315899,
    22331238,
    22313289,
    22322373,
    22326339,
    22328822,
    22339059,
    22317234,
    22316980,
    22336509,
    22327414,
    22334711,
    22319941,
    22340178,
    22328516,
    22320289,
    22333994,
    22334702,
    22324298,
    22315694,
    22326109,
    22324691,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
          children: _ids
              .map((i) => FutureBuilder<Article>(
                    future: _getArticle(i),
                    builder: (BuildContext context,
                        AsyncSnapshot<Article> snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return _buildItem(snapshot.data);
                      } else {
                        return Center(child: CircularProgressIndicator());
                      }
                    },
                  ))
              .toList()),
    );
  }

  Future<Article> _getArticle(int id) async {
    final storyUrl = "https://hacker-news.firebaseio.com/v0/item/$id.json";
    final storyRes = await http.get(storyUrl);
    if (storyRes.statusCode == 200) {
      return parseArticle(storyRes.body);
    }
  }

  Widget _buildItem(Article article) {
    return Padding(
      key: Key(article.title),
      padding: EdgeInsets.all(16.0),
      child: ExpansionTile(
        title: Text(
          article.title,
          style: TextStyle(fontSize: 18),
        ),
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(article.type),
              IconButton(
                icon: Icon(
                  Icons.open_in_new,
                  color: Colors.redAccent,
                ),
                onPressed: () async {
                  final url = article.url;
                  if (await canLaunch(url)) {
                    launch(url);
                  }
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
