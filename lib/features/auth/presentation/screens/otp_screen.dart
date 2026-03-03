import 'package:crafty_bay/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:crafty_bay/features/auth/presentation/widgets/app_logo.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import '../../../../app/extensions/utils_extension.dart';
import '../widgets/resend_otp_section.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});
  static const String routeName = "/otp";

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController _pinController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppLogo(),
                  const SizedBox(height: 15),
                  Text("Enter Your OTP", style: context.textTheme.titleLarge),
                  Text(
                    "An OTP has been sent to your email",
                    style: context.textTheme.bodyLarge?.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Pinput(
                    controller: _pinController,
                    defaultPinTheme: PinTheme(
                      width: 50,
                      height: 50,
                      textStyle: TextStyle(fontSize: 20, color: Colors.black),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade200,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  FilledButton(onPressed: _onTapNext, child: Text("Next")),
                  ResendOtp(),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: _alreadyHaveAnAccount,
                    child: Text(
                      "Already Have An Account? \n Sign In",
                      textAlign: .center,
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTapNext() {
    if (_formKey.currentState!.validate()) {}
  }

  void _alreadyHaveAnAccount() {
    Navigator.pushNamed(context, SignInScreen.routeName);
  }

  @override
  void dispose() {
    _pinController.dispose();
    super.dispose();
  }
}
