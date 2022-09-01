import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/constants/constants.dart';
import 'package:news_app/models/article.dart';

class ApiServices {
  var client = http.Client();
  Future<List<Article>> getArticles() async {
    List<Article> articles = [];
    var uri = Uri.parse(topNewsUrl);
    var response = await client.get(uri);
    var jsonData = jsonDecode(response.body);
    if (response.statusCode == 200) {
      jsonData['articles'].forEach((json){
        if (json['url'] != null && json['urlToImage'] != null && json['description'] != null && json['content'] != null) {
          Article article = Article.fromJson(json);
          articles.add(article);
        }
      });
      return articles;
    } else {
      throw Exception('Failed to load post');
    }
  }


  Future<List<Article>> getBussinessArticles() async {
    List<Article> articles = [];
    var uri = Uri.parse(bussinessUrl);
    var response = await client.get(uri);
    var jsonData = jsonDecode(response.body);
    if (response.statusCode == 200) {
      jsonData['articles'].forEach((json){
        if (json['url'] != null && json['urlToImage'] != null && json['description'] != null && json['content'] != null) {
          Article article = Article.fromJson(json);
          articles.add(article);
        }
      });
      return articles;
    } else {
      throw Exception('Failed to load post');
    }
  }

  Future<List<Article>> getEntertainmentArticles() async {
    List<Article> articles = [];
    var uri = Uri.parse(entertainmentUrl);
    var response = await client.get(uri);
    var jsonData = jsonDecode(response.body);
    if (response.statusCode == 200) {
      jsonData['articles'].forEach((json){
        if (json['url'] != null && json['urlToImage'] != null && json['description'] != null && json['content'] != null) {
          Article article = Article.fromJson(json);
          articles.add(article);
        }
      });
      return articles;
    } else {
      throw Exception('Failed to load post');
    }
  }

  Future<List<Article>> getSportsArticles() async {
    List<Article> articles = [];
    var uri = Uri.parse(sportsUrl);
    var response = await client.get(uri);
    var jsonData = jsonDecode(response.body);
    if (response.statusCode == 200) {
      jsonData['articles'].forEach((json){
        if (json['url'] != null && json['urlToImage'] != null && json['description'] != null && json['content'] != null) {
          Article article = Article.fromJson(json);
          articles.add(article);
        }
      });
      return articles;
    } else {
      throw Exception('Failed to load post');
    }
  }

  Future<List<Article>> getScienceArticles() async {
    List<Article> articles = [];
    var uri = Uri.parse(scienceUrl);
    var response = await client.get(uri);
    var jsonData = jsonDecode(response.body);
    if (response.statusCode == 200) {
      jsonData['articles'].forEach((json){
        if (json['url'] != null && json['urlToImage'] != null && json['description'] != null && json['content'] != null) {
          Article article = Article.fromJson(json);
          articles.add(article);
        }
      });
      return articles;
    } else {
      throw Exception('Failed to load post');
    }
  }

  Future<List<Article>> getTechnologyArticles() async {
    List<Article> articles = [];
    var uri = Uri.parse(technologyUrl);
    var response = await client.get(uri);
    var jsonData = jsonDecode(response.body);
    if (response.statusCode == 200) {
      jsonData['articles'].forEach((json){
        if (json['url'] != null && json['urlToImage'] != null && json['description'] != null && json['content'] != null) {
          Article article = Article.fromJson(json);
          articles.add(article);
        }
      });
      return articles;
    } else {
      throw Exception('Failed to load post');
    }
  }

}