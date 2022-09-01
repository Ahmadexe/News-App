import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('NewsApp', style: TextStyle(color: Colors.black),),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  spacing: 10,
                  children: const [
                    CategoryCard(image: 'bussiness.jpg', title: 'bussiness'),
                    CategoryCard(image: 'entertainment.jpg', title: 'entertainment'),
                    CategoryCard(image: 'science.jpg', title: 'science'),
                    CategoryCard(image: 'sportsNews.jpg', title: 'Sports'),
                    CategoryCard(image: 'technology.jpg', title: 'technology'),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}