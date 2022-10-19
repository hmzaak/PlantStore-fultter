import 'package:flutter/material.dart';
import 'package:plantstore/ui/custom_widgets/login_page_widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  static const route = '/login-page';
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/leaves.jpg'),
            topTextSection(context),
            const LoginForm(),
            SizedBox(height: height * 0.15),
            loginButtonSection(context),
          ],
        ),
      ),
    );
  }
}
