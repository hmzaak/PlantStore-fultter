import 'package:flutter/material.dart';
import 'package:plantstore/ui/custom_widgets/login_page_widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/leaves.jpg'),
            topTextSection,
            const LoginForm(),
            const SizedBox(height: 130),
            loginButtonSection,
          ],
        ),
      ),
    );
  }
}
