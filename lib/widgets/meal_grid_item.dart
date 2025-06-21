import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mealsapp/modals/meal.dart';
import 'package:mealsapp/widgets/meal_item_trait.dart';
import 'package:transparent_image/transparent_image.dart';

class MealGridItem extends StatelessWidget {
  const MealGridItem(this.meal, {super.key});
  final Meal meal;

  String get complexityText {
    return meal.complexity.name[0].toUpperCase() + meal.complexity.name.substring(1);
  }

  String get spiceText {
    return meal.spice.name[0].toUpperCase() + meal.spice.name.substring(1);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(10),
      ),
      clipBehavior: Clip.hardEdge,
      elevation: 5,
      child: InkWell(
        onTap: () {},

        child: Stack(
          children: [
            FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(meal.imageUrl),
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),

            // CachedNetworkImage(imageUrl: meal.imageUrl,
            // placeholder:(context, url) => CircularProgressIndicator(),
            // errorWidget: (context, url, error) => Icon(Icons.error),
            // fit: BoxFit.cover,
            // width: double.infinity,
            // height: 200,),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.black54,
                child: Column(
                  children: [
                    Text(
                      meal.title,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5),

                    Row(
                      children: [
                        SizedBox(width: 10),
                        MealItemTrait(
                          Icons.schedule,
                          '${meal.cookingTime} min',
                        ),
                        Spacer(),
                        MealItemTrait(
                          Icons.work,
                          complexityText,
                        ),
                       Spacer(),
                        MealItemTrait(
                          Icons.fireplace_outlined,
                          spiceText,
                        ),
                        SizedBox(width: 10,)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
