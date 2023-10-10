import 'package:flutter/material.dart';
import 'recipe_model.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Recipe Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.builder(
          itemCount: Recipe.samples.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: () {
                  //when user tap, this body code runs.
                  print(Recipe.samples[index].label);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Text('new page - ${Recipe.samples[index].label}');
                  }));
                },
                child: buildRecipeCard(Recipe.samples[index]));
          }),
    );
  }

  Widget buildRecipeCard(Recipe recipe) {
    return Card(
        elevation: 2,
        //card 밑에 그림자
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        //card 각진 부분
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(children: [
            Image.asset(recipe.imageUrl),
            const SizedBox(
              height: 10,
            ), //SizeBox
            Text(recipe.label)
          ]),
        ));
    //ListView와 Card는 모두 위 아래로 나열하는 데서 공통점을 가지지만 ListView는 스크롤이 가능하고 Card는 불가능
  }
}
