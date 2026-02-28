import 'package:flutter/material.dart';

import '../../../../app/extensions/utils_extension.dart';
import '../widgets/app_logo.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  static const String routeName = "/sign-up";

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: AppBar(title: Text(AppLocalizations.of(context).helloWorld)),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                //  Spacer(),
                AppLogo(),
                const SizedBox(height: 20),
                Text("Sign Up with Email", style: context.textTheme.titleLarge),
                Text(
                  "Get started with your details",
                  style: context.textTheme.bodyLarge?.copyWith(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(labelText: "Email"),
                ),
                TextFormField(),
                TextFormField(),
                TextFormField(),
                TextFormField(),
                TextFormField(),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
