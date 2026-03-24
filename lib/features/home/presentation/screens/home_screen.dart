import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../app/assets_path.dart';
import '../../../shared/presentation/widgets/category_card.dart';
import '../widgets/app_bar_icon_button.dart';
import '../widgets/home_slider.dart';
import '../widgets/product_search_bar.dart';
import '../widgets/section_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SearchBarWidget(searchController: _searchController),
              const SizedBox(height: 20),
              HomeSlider(),
              const SizedBox(height: 20),
              SectionHeader(name: 'Categories', onTapSeeAll: () {}),
              _buildCategoryCard(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryCard() {
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

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}

AppBar _buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    title: SvgPicture.asset(AssetsPath.navSvg),
    actions: [
      AppBarIcons(
        onTap: () {},
        icon: Icon(Icons.person_outline, color: Colors.black87),
      ),
      AppBarIcons(
        onTap: () {},
        icon: Icon(Icons.call_outlined, color: Colors.black87),
      ),
      AppBarIcons(
        onTap: () {},
        icon: Icon(Icons.notifications_outlined, color: Colors.black87),
      ),
    ],
  );
}
