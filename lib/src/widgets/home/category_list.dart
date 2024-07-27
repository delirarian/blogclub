import 'package:blogclub/src/datas/data.dart';
import 'package:blogclub/src/utils/colors.dart';
import 'package:blogclub/src/widgets/carousel/carousel_slider.dart';
import 'package:flutter/material.dart';

//*TODO:
class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final categories = AppDatabase.categories;
    return CarouselSlider.builder(
      itemCount: categories.length,
      itemBuilder: (context, index, realIndex) {
        return CategoryItem(
          left: realIndex == 0 ? 32 : 8,
          right: realIndex == categories.length - 1 ? 32 : 8,
          category: categories[realIndex],
        );
      },
      options: CarouselOptions(
        scrollDirection: Axis.horizontal,
        viewportFraction: 0.8,
        aspectRatio: 1.2,
        initialPage: 0,
        disableCenter: true,
        enableInfiniteScroll: false,
        enlargeCenterPage: true,
        enlargeStrategy: CenterPageEnlargeStrategy.height,
        scrollPhysics: const BouncingScrollPhysics(),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final Category category;
  final double left;
  final double right;
  const CategoryItem({
    super.key,
    required this.category,
    required this.left,
    required this.right,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(left, 0, right, 0),
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 16),
              foregroundDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                gradient: categoriesShadow(),
              ),
              decoration: BoxDecoration(
                color: ColorPalette.blue,
                borderRadius: BorderRadius.circular(32),
              ),
              child: CategoriesImages(category: category),
            ),
          ),
          CategoriesTitles(category: category),
        ],
      ),
    );
  }

  LinearGradient categoriesShadow() {
    return const LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.center,
      colors: [
        Color(0xff0D253C),
        Colors.transparent,
      ],
    );
  }
}

class CategoriesImages extends StatelessWidget {
  const CategoriesImages({
    super.key,
    required this.category,
  });

  final Category category;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(32),
      child: Image.asset(
        'assets/images/posts/large/${category.imageFileName}',
        fit: BoxFit.cover,
      ),
    );
  }
}

class CategoriesTitles extends StatelessWidget {
  const CategoriesTitles({
    super.key,
    required this.category,
  });

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 48,
      left: 32,
      child: Text(
        category.title,
        style:
            Theme.of(context).textTheme.titleLarge!.apply(color: ColorPalette.white),
      ),
    );
  }
}

