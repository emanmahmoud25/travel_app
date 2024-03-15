import 'package:aaa8/screens/category_trip_screen.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  //const CategoryItem({super.key});
  final String id;
  final String title;
  final String imageUrl;
  const CategoryItem(this.id, this.title, this.imageUrl, {super.key});
  void selectCategory(BuildContext ctx) {
    /*
    Navigator.of(ctx)
        .push(MaterialPageRoute(builder: (c) => CategoryTripScreen(id, title)));
        */
    Navigator.of(ctx).pushNamed(CategoryTripScreen.screenRoute,
        arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Stack(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            imageUrl,
            height: 250,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(15)),
          child: Text(title, style: Theme.of(context).textTheme.titleLarge),
        ),
      ]),
    );
  }
}
