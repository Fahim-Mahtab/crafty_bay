import 'package:crafty_bay/app/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../app/assets_path.dart';
import '../widgets/app_bar_icon_button.dart';
import '../widgets/home_category_list.dart';
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
              HomeCategoryList(),
              SectionHeader(name: 'Popular', onTapSeeAll: () {}),
              Card(

                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                        color: AppColors.themeColor,
                        image: DecorationImage(
                          image: AssetImage(AssetsPath.shoePng),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),

                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min, // Wrap content vertically
                      children: [
                        // 1. Title Text
                        Text(
                          'New Year Special Shoe 30',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        const SizedBox(height: 8), // Vertical spacing
                        // 2. Bottom Row (Price, Rating, Button)
                        Row(
                          children: [
                            // Price Text
                            const Text(
                              '\$100',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(
                                  0xFF00B4B4,
                                ), // Teal-like color from image
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Icon(
                              Icons.star,
                              color: Color(0xFFFFD54F), // Amber/Yellow star
                              size: 20,
                            ),
                            Text(
                              '4.8',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0xFF00B4B4),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Material(
                                color: Colors
                                    .transparent,
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(8),
                                  onTap: () {
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                      size: 10,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
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
