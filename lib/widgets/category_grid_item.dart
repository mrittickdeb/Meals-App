import 'package:flutter/material.dart';
import 'package:meals_app/models/category.dart';

class  CategoryGridItem extends StatelessWidget{
    const CategoryGridItem({super.key,required this.category,required this.onSelectCategory});


    final Category category;
    final void Function() onSelectCategory;
    @override
  Widget build(context) {
    return InkWell(
      onTap: onSelectCategory,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Container(
       padding: const EdgeInsets.all(16),
  alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(colors: [category.color.withAlpha((0.55 * 255).toInt()),
        category.color.withAlpha((0.9 * 255).toInt()),// 0.9 opacity
      ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
        ),
        child: Text(category.title,
        style:Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onSurface
        ) ,
        ),
      ),
    );
  }
}