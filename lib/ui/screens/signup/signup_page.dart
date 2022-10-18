import 'package:flutter/material.dart';
import 'package:plantstore/ui/custom_widgets/signup_page_widgets/signup_form.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          child: Column(
            children: [
              textSection,
              const SignUpForm(),
              const SizedBox(height: 220),
              signUpButtonSection,
            ],
          ),
        ),
      ),
    );
  }
}

Widget textSection = Padding(
  padding: const EdgeInsets.only(
    top: 120,
    bottom: 30,
  ),
  child: Column(
    children: const [
      Text(
        'Register',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Color(0xff184A2C),
        ),
      ),
      Text('Create your new account'),
    ],
  ),
);

Widget signUpButtonSection = Column(
  children: [
    SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.all(16),
          backgroundColor: const Color(0xff184A2C),
        ),
        onPressed: () {},
        child: const Text('Sign Up'),
      ),
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Already have an account?'),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Login',
            style: TextStyle(
              color: Color(0xff184A2C),
            ),
          ),
        )
      ],
    ),
  ],
);
