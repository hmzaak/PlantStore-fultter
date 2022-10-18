import 'package:flutter/material.dart';

// Widget builder function for TextFormFields.
Widget buildTextFormField(
  String hintText,
  IconData icon, {
  bool obscureText = false,
}) {
  return TextFormField(
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: const TextStyle(
        color: Color(0xff184A2C),
      ),
      filled: true,
      prefixIcon: Icon(
        icon,
        color: const Color(0xff184A2C),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
    ),
    obscureText: obscureText,
    cursorColor: const Color(0xff184A2C),
  );
}

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Wrap(
            runSpacing: 16,
            children: [
              buildTextFormField('Full Name', Icons.person),
              buildTextFormField('Email', Icons.email),
              buildTextFormField('Password', Icons.lock, obscureText: true),
              buildTextFormField('Confirm Password', Icons.lock,
                  obscureText: true),
              const Text(
                'By signing in you agree to our Terms of use and privacy policy',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
