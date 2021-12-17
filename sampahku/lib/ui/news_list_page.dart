import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sampahku/model/article.dart';
import 'package:sampahku/ui/detail_webview_page.dart';

class NewsListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 30),
            child: Column(
              children: [
                Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Portal Berita',
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w700
                            ),),
                          Text('sampahku',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600
                            ),)
                        ],
                      ),
                    ]
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: FutureBuilder<String>(
                    future:
                    DefaultAssetBundle.of(context).loadString('assets/json/articles.json'),
                    builder: (context, snapshot) {
                      final List<Article> articles = parseArticles(snapshot.data);
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: articles.length,
                        itemBuilder: (context, index) {
                          return _buildArticleItem(context, articles[index]);
                        },
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        )
    );
  }

  Widget _buildArticleItem(BuildContext context, Article article) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailWebviewPage(article: article,)),
        );
      },
      child: Padding(
        padding: EdgeInsets.only(top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 203,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(article.urlToImage), fit: BoxFit.fill),
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.black.withOpacity(0.33),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Center(
                        child: Text(
                          article.description,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white),
                          maxLines: 3,
                          overflow: TextOverflow.fade,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(article.title,
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
            SizedBox(height: 5,),
            Text(article.publishedAt,
                style: TextStyle(fontSize: 13, color: Color(0xff8a8989))),
            SizedBox(height: 5,),
            Text('Oleh ' + article.author,
                style: TextStyle(fontSize: 13, color: Color(0xff8a8989))),
          ],
        ),
      ),
    );
  }
}