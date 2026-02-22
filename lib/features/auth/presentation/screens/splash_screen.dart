import 'package:crafty_bay/app/provider/language_provider.dart';
import 'package:crafty_bay/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context).appTittle)),
      body: Column(
        children: [
          SvgPicture.asset("assets/images/logo.svg"),
          TextButton(
            onPressed: () => throw Exception(),
            child: const Text("Throw Test Exception"),
          ),
        ],
      ),
    );
  }
}
