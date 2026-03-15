import 'package:flutter/material.dart';

class AppBarIcons extends StatelessWidget {
  final Icon icon;
  final VoidCallback onTap;

  const AppBarIcons({super.key, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: GestureDetector(
        onTap: () {},
        child: CircleAvatar(
            radius: 15,
            backgroundColor: Colors.grey.shade300, child: icon),
      ),
    );
  }
}
