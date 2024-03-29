import 'package:flutter/material.dart';
import '../widgets/category_item.dart';
import '../dummy_data.dart';
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar : AppBar(
          title: const Text('DeliMeal'),
        ),
        body: GridView(
          padding: const EdgeInsets.all(25),
        children: DUMMY_CATEGORIES
        .map(
          (categData)=> CategoryItem(
            categData.id,
            categData.title,
            categData.color
          )
        ).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}