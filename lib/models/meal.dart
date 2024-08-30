//so basically in 'models' we lay the blueprint of what that thing will consist of; the structure for a single meal
//In Flutter (and Dart, the programming language used in Flutter), an enum (short for "enumeration") is a special data type that allows you to define a set of named values, known as members or enumerators. These values represent all possible states that a variable of this type can have. Enums are commonly used when you need a variable to be one of a limited set of values.
//so basically the structure is the same; we define what that class requires - parameters
//and then under that we mention the type of that requirement, String, bool, etc.
//enum is basically restricting the list of options within a parameter

enum Complexity {
  simple,
  challenging,
  hard,
}

enum Affordability {
  affordable,
  pricey,
  luxurious,
}

class Meal {
  const Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.duration,
    required this.complexity,
    required this.affordability,
    required this.isGlutenFree,
    required this.isLactoseFree,
    required this.isVegan,
    required this.isVegetarian,
  });

  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;
}