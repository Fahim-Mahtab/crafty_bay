import 'package:crafty_bay/features/shared/presetation/screens/main_nav_holder_screen.dart';
import 'package:flutter/material.dart';
import '../../../../app/extensions/localization_extension.dart';
import '../widgets/app_logo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String routeName = "/";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  Future<void> _navigateToNextScreen() async {
    await Future.delayed(const Duration(seconds: 3));
    if (mounted) {
      Navigator.pushReplacementNamed(context, MainNavHolderScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.appTittle)),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(child: Center(child: AppLogo(height: 200))),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CircularProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}
