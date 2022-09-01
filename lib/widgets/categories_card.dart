import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Container(
              height: 110,
              width: 180,
              child: Image.network(
                'https://images.unsplash.com/photo-1521791136064-7986c2920216?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80',
                fit: BoxFit.fill,
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Container(
                height: 110,
                width: 180,
                color: Colors.black26,
                child: Center(
                  child: Text('Title',
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                )),
          )
        ],
      ),
    );
  }
}
