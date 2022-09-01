import 'package:flutter/material.dart';
import 'package:news_app/api/api_services.dart';
import 'package:news_app/models/article.dart';
import 'package:news_app/widgets/categories_card.dart';
import 'package:news_app/widgets/news_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Article> articles = [];
  bool _isLoading = false;
  @override
  void initState() {
    getArticles();
    super.initState();
  }

  getArticles() async {
    setState(() {
      _isLoading = true;
    });
    articles = await ApiServices().getArticles();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'NewsApp',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: _isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Wrap(
                            spacing: 10,
                            children: const [
                              CategoryCard(
                                  image: 'bussiness.jpg', title: 'bussiness'),
                              CategoryCard(
                                  image: 'entertainment.jpg',
                                  title: 'entertainment'),
                              CategoryCard(
                                  image: 'science.jpg', title: 'science'),
                              CategoryCard(
                                  image: 'sportsNews.jpg', title: 'Sports'),
                              CategoryCard(
                                  image: 'technology.jpg', title: 'technology'),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ListView.builder(
                            shrinkWrap: true,
                            physics: const ClampingScrollPhysics(),
                            itemCount: articles.length,
                            itemBuilder: (context, index) {
                              return NewsCard(
                                imageUrl: articles[index].urlToImage!,
                                title: articles[index].title!,
                                description: articles[index].description!,
                                url: articles[index].url!,
                              );
                            })
                      ],
                    ),
                  ),
                ),
              ));
  }
}
