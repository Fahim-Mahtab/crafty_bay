import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../app/assets_path.dart';
import '../widgets/app_bar_icon_button.dart';
import '../widgets/home_slider.dart';

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
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SearchBarWidget(searchController: _searchController),
            const SizedBox(height: 20),
            HomeSlider(),
          ],
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

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
    required TextEditingController searchController,
  }) : _searchController = searchController;

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      controller: _searchController,
      leading: Icon(Icons.search),
      hintText: "Search",
      elevation: WidgetStateProperty.all(0),
      backgroundColor: WidgetStateProperty.all(Colors.grey.shade200),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}

AppBar buildAppBar() {
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
