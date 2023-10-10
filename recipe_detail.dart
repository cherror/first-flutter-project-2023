import 'package:flutter/material.dart';
import 'recipe_model.dart'; // android and google이 만든 design은 meterial이고, ios는 cupertino

class RecipeDetail extends StatefulWidget{
  
  final Recipe recipe;
  
  const RecipeDetail({Key? key, required this.recipe}) : super(key: key);
  
  @override
  State<StatefulWidget> createState() {
    throw UnimplementedError();
  }

}
