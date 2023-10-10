class Recipe{
  String label;
  String imageUrl;

  //TODO: 몇인분, 재료

  Recipe(this.label, this.imageUrl);

  //TODO: recipes list
  static List<Recipe> samples = [
    Recipe(
      'Spaghetti and Meatballs',
      'assets/spaghetti_meatballs.jpeg',
    ),
    Recipe(
      'Tomato Soup',
      'assets/tomato_soup.jpeg',
    ),
    Recipe(
      'Grilled Cheese',
      'assets/grilled_cheese.jpeg',
    ),
    Recipe(
      'Chocolate Chip Cookies',
      'assets/choco_chip.jpeg',
    ),
    Recipe(
      'Taco Salad',
      'assets/taco.jpeg',
    ),
    Recipe(
      'Hawaiian Pizza',
      'assets/hawaiian_pizza.jpeg',
    ),
  ];
}
