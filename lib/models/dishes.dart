// ignore_for_file: constant_identifier_names

enum Complexity {
  simple,
  medium,
  hard
}

enum Price {
  cheap,
  fair,
  expensive
}

class Dishes {
  final String id;
  final List<String> categories;
  final String title;
  final Price price;
  final Complexity complexity;
  final String imageUrl;
  final int duration;
  final List<String> ingredients;
  final List<String> steps;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isLactoseFree;

  Dishes({
    required this.id, 
    required this.categories, 
    required this.title, 
    required this.price,
    required this.complexity, 
    required this.imageUrl,
    required this.duration, 
    required this.ingredients, 
    required this.steps, 
    required this.isGlutenFree, 
    required this.isVegan, 
    required this.isVegetarian, 
    required this.isLactoseFree, 
    });

    String get complexityTest {
      if(complexity == Complexity.simple) return "Simple";
      if(complexity == Complexity.medium) return "Medium";
      if(complexity == Complexity.hard) return "Hard";
      return "difficulty not found";
    }

    String get priceText {
      if(price == Price.cheap) return "cheap";
      if(price == Price.fair) return "fair";
      if(price == Price.expensive) return "expensive";
      return "Price not found";
    }
}