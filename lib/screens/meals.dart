//goal to show meals for a category

import 'package:flutter/material.dart';
import 'package:meals2/models/meal.dart';
import 'package:meals2/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, required this.title, required this.meals});

//now need a list of all meals for a given category
//so in dummy data we will add data
//new file called meal.dart

  final String title; //input values
  final List<Meal> meals; //input values

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
        Text('Uh oh, nothing here.',
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: Theme.of(context).colorScheme.onBackground)),
        const SizedBox(
          height: 16,
        ),
        Text(
          'Try selecting a different category.',
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Theme.of(context).colorScheme.onBackground),
        )
      ]));
    //to handle situation with no meals, adding an IF method

    if (meals.isNotEmpty) {
      content = ListView.builder(
        itemCount: meals.length, //to tell how many items we'll have
        itemBuilder: (ctx, index) => MealItem(meal: meals[index]));
    }
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: content);
  }
}
