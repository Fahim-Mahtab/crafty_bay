import 'package:flutter/material.dart';

import '../../../shared/presentation/widgets/category_card.dart';

class HomeCategoryList extends StatelessWidget {
  const HomeCategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        itemCount: 10,
        scrollDirection: .horizontal,
        itemBuilder: (context, index) =>
            CategoryCard(itemName: "Electronics", icon: Icons.computer),
        separatorBuilder: (_, _) => const SizedBox(width: 12),
      ),
    );
  }
}