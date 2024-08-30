import 'package:flutter/material.dart';
import 'package:meals2/data/dummy_data.dart';
import 'package:meals2/screens/meals.dart';
import 'package:meals2/widgets/category_grid_item.dart';
import 'package:meals2/models/category.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  void _selectCategory(BuildContext context, Category category) {
    final filteredMeals = dummyMeals.where((meal) => meal.categories.contains(category.id)).toList();

    
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => MealsScreen(
            title: category.title,
            meals: filteredMeals))); //the same as Navigator.push(context, route)
  }

  //materialpageroute is a built in class, return a widget as part of this function

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick your category'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, //how many columns
            childAspectRatio: 3 / 2, //sizing, can also be 1.5, aspect ratio
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: [
          //alternative is availableCategories.map(category) => CategoryGridItem(category: category).toList()
          for (final category in availableCategories)
            CategoryGridItem(
              category: category,
              onSelectCategory: () {
                _selectCategory(context, category);
              },
            )
        ],
      ),
    );
  }
}

//onSelectCategory is something we created in category grid item as required this. and basically we created it as a function
//the function then takes in a method that we created here which is _selectCategory
//we said 'onTap', execute the onSelectCategory function and within it it executes _selectCategory
//currently it just shows text 'Some title' and an empty list of meals because meals is currently empty; we haven't connected it to the dummy data