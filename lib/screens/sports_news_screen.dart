import 'package:flutter/material.dart';
import 'package:news_app/api/api_services.dart';
import 'package:news_app/models/article.dart';
import 'package:news_app/widgets/news_card.dart';

class SportsNewsScreen extends StatefulWidget {
  const SportsNewsScreen({super.key});

  @override
  State<SportsNewsScreen> createState() => _SportsNewsScreenState();
}

class _SportsNewsScreenState extends State<SportsNewsScreen> {
  List<Article> articles = [];
  bool _isLoading = false;

  @override
  void initState() {
    getData();
    super.initState();
  }

  getData() async {
    setState(() {
      _isLoading = true;
    });
    articles = await ApiServices().getSportsArticles();
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
          'Sports',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: const EdgeInsets.all(10),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: articles.length,
                  itemBuilder: (context, index) {
                    return NewsCard(
                        imageUrl: articles[index].urlToImage!,
                        title: articles[index].title!,
                        description: articles[index].description!,
                        url: articles[index].url!);
                  }),
            ),
    );
  }
}
