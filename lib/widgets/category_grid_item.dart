import 'package:flutter/material.dart';
import 'package:meals2/models/category.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem(
      {super.key, 
      required this.category, 
      required this.onSelectCategory});

  final Category category; //category is of type Category
  final void Function() onSelectCategory;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //can use GestureDetector as well and then add stuff like onTap, onTapCancel; using InkWell you can do this but also get a visual feedback which isn't in Gesture Detector
      onTap: onSelectCategory,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              colors: [
                category.color.withOpacity(0.55),
                category.color.withOpacity(0.9)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
            )),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
        ),
      ),
    );
  }
}
