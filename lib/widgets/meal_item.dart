

import 'package:flutter/material.dart';
import 'package:meals2/models/meal.dart';
import 'package:meals2/widgets/meal_item_trait.dart';
import 'package:transparent_image/transparent_image.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key, 
  required this.meal});

  final Meal meal;
  
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      clipBehavior: Clip.hardEdge,
      elevation: 2,
      child: InkWell(
      onTap: (){},
      child: Stack(
        children: [
          FadeInImage(
          placeholder: MemoryImage(kTransparentImage), 
          image: NetworkImage(meal.imageUrl),
          fit: BoxFit.cover,
          height: 200,
          width: double.infinity,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0, //end 50 pixels before image ends to the right, play around
            child: Container(
              color: Colors.black54,
              padding: const EdgeInsets.symmetric(vertical:6, horizontal:44),
              child: Column(
                children: [
                  Text(meal.title, 
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
                  const SizedBox(height:12),
                   Row(children: [
                    MealItemTrait(icon: Icons.schedule, label: '${meal.duration} min')





                  ],)
                ],

              ),
            ))

//memoryimage came from a package we installed called Flutter transparent image
//same for kTransparent image

        ],
      ),
    ),);
  }

}