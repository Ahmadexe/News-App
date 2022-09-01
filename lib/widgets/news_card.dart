import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  const NewsCard(
      {required this.imageUrl,
      required this.title,
      required this.description,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            child: Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                imageUrl,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
          ),
          Text(
            description,
            style: const TextStyle(color: Colors.black45, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
