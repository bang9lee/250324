import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget{

  RecipeListItem(this.path, this.title);


 String path;
 String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 2 / 1, 
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                path,
                fit: BoxFit.cover
                )
              ),
            ),
        SizedBox(height: 8),
          Text(
            'Made $title',
            style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 8),
                Text(
                  "Have you ever made your own $title you've tried a homemade Made Coffee, you'll never go back. ",
                  style: TextStyle(
    color: Colors.black.withOpacity(0.5), // 하단 텍스트를 연하게
    fontSize: 13,
          ),
          ),
        ],
      ),
    );  
  }
}
