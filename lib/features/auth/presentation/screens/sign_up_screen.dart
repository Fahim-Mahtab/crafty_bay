import 'package:crafty_bay/features/auth/presentation/screens/otp_screen.dart';
import 'package:crafty_bay/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';
import '../../../../app/extensions/utils_extension.dart';
import '../../../shared/Utils/validators.dart';
import '../widgets/app_logo.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  static const String routeName = "/sign-up";

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  // final _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  AppLogo(),
                  const SizedBox(height: 20),
                  Text("Complete Profile", style: context.textTheme.titleLarge),
                  Text(
                    "Get started with us your details",
                    style: context.textTheme.bodyLarge?.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(hintText: "Email"),
                    validator: (value) =>
                        Validators.emailValidate(value, "Email is required"),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _firstNameController,
                    decoration: const InputDecoration(hintText: "First Name"),
                    validator: (value) =>
                        Validators.validateText(value, "First Name required"),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _lastNameController,
                    decoration: const InputDecoration(hintText: "Last Name"),
                    validator: (value) =>
                        Validators.validateText(value, "Last Name is required"),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _phoneController,
                    decoration: const InputDecoration(hintText: "Phone"),
                    validator: (value) => Validators.phoneNumberValidate(value),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _cityController,
                    decoration: const InputDecoration(hintText: "City"),
                    validator: (value) =>
                        Validators.validateText(value, "City is required"),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(hintText: "Password"),
                    validator: (value) => Validators.passwordValidate(value),
                  ),
                  const SizedBox(height: 8),
                  FilledButton(
                    onPressed: _onTapSignUp,
                    child: Text("Sign Up"),
                  ),
                  TextButton(
                    onPressed: _onTapSignIn,
                    child: Text("Already Have An Account?"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTapSignIn() {
    Navigator.pushNamed(context, SignInScreen.routeName);

  }

  void _onTapSignUp() {
    Navigator.pushNamed(context, OtpScreen.routeName);
    if (_formKey.currentState!.validate()) {}
  }

  @override
  void dispose() {
    _emailController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _phoneController.dispose();
    _cityController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
