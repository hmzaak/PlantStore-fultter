import 'package:flutter/material.dart';
import 'package:plantstore/ui/custom_widgets/signup_page_widgets/signup_form.dart';
import 'package:plantstore/ui/screens/login/login_page.dart';

class SignUpPage extends StatelessWidget {
  static const route = '/signup-page';
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            topTextSection,
            const SignUpForm(),
            const SizedBox(height: 215),
            signUpButtonSection(context),
          ],
        ),
      ),
    );
  }
}
