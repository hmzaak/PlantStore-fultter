import 'package:flutter/material.dart';
import 'package:plantstore/ui/custom_widgets/signup_page_widgets/signup_form.dart';

class SignUpPage extends StatelessWidget {
  static const route = '/signup-page';
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            topTextSection(context),
            const SignUpForm(),
            SizedBox(height: height * 0.24),
            signUpButtonSection(context),
          ],
        ),
      ),
    );
  }
}
