import 'package:flutter/material.dart';
import 'package:sampahku/model/article.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DetailWebviewPage extends StatelessWidget {
  static const routeName = '/article_detail';

  final Article article;

  const DetailWebviewPage({required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.network(article.urlToImage),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios, color: Colors.green,))
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      article.title,
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text('${article.publishedAt}'),
                    SizedBox(height: 10),
                    Text('${article.author}'),
                    SizedBox(height: 10,),
                    Text(
                      article.content,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.only(left: 120, right: 120),
                      child: ElevatedButton(
                        child: Center(
                            child: Text('Lanjut membaca')),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ArticleWebView(url: article.url)),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ArticleWebView extends StatelessWidget {
  static const routeName = '/article_web';

  final String url;

  const ArticleWebView({required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News App'),
      ),
      body: WebView(
        initialUrl: url,
      ),
    );
  }
}